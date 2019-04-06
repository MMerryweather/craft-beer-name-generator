generate_name = function(actual_beers = FALSE){
  pacman::p_load(tidyverse,tidytext, forcats, markovchain)

  df = "data/data.xlsx" %>% here::here() %>% readxl::read_excel()

  tokenizer = function(col){
    col_enq = enquo(col)
    df %>%
      transmute(`line` = row_number(),
                text = !!col_enq) %>%
      unnest_tokens(word, text) %>%
      anti_join(stop_words, by = "word")
  }

  fit_markov = function(df){
    markovchainFit(data = df$word)
  }

  beers = df %>% select(style) %>% unique() %>% filter(!is.na(style))

  name_tokens = tokenizer(name)
  beer_tokens = tokenizer(style)
  maker_tokens = tokenizer(maker)

  name_markov = name_tokens %>% fit_markov()
  beer_markov = beer_tokens %>% fit_markov()
  maker_markov = maker_tokens %>% fit_markov()

  maker_name_length = rpois(1,2) %>% pmax(1)
  name_name_length = rpois(1,3) %>% pmax(1)
  beer_name_length = rpois(1,1) %>% pmax(1)

  sequencer = function(model, n){
    markovchainSequence(n = n,
                        markovchain = model$estimate) %>%
      paste(collapse = " ") %>%
      str_to_title()
  }
  maker = sequencer(maker_markov, maker_name_length)
  name = sequencer(name_markov, name_name_length)
  if(actual_beers == T){
    beer = beers %>% dplyr::sample_n(1) %>% unlist()
  } else {
  beer = sequencer(beer_markov, beer_name_length)
  }

  title = paste0(maker, if_else(str_ends(maker,"s"),"","'s")) %>%
    paste(name, collapse = " ") %>%
    paste(beer, collapse = " ")
  title
}

