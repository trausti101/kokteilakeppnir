library(tidyverse)
library(googlesheets4)

loadCocktail <- function(worksheet, participant) {
  read_sheet(worksheet, sheet = participant) %>%
    drop_na()
}

Agla <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Agla")
Trausti <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Trausti") 
Hjalti <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Hjalti") 
Jónas <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Jónas") 
Harpa <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Harpa") 
Kata <- loadCocktail("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", "Kata") 


all <- list(Agla, Trausti, Hjalti, Jónas, Harpa, Kata)

names(all) <- c("Agla", "Trausti", "Hjalti", "Jónas", "Harpa", "Kata")

allSingle <- all %>%
  bind_rows(.id = "id") %>%
  pivot_longer(where(is.numeric)) %>%
  group_by(id, name) %>%
  arrange(.by_group = TRUE)

ggplot(data = allSingle)+
  geom_density(aes(x = as.numeric(value), fill = name), alpha = 0.4)+
  scale_x_continuous(limits = c(0,5))+
  labs(x = "Stig", fill = "Flokkur", title = "Stig fyrir hvern drykk", y = "")+
  facet_wrap(~id)+
  theme_light()
  
  
