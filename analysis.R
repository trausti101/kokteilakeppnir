Agla <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Agla") %>%
  drop_na()
Trausti <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Trausti") %>%
  drop_na()
Hjalti <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Hjalti") %>%
  drop_na()
Jónas <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Jónas") %>%
  drop_na()
Harpa <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Harpa") %>%
  drop_na()
Kata <- read_sheet("1W29bIe_DUZgTCk9h8yACCU380T6xmR7NblG0IQF-tH8", sheet = "Kata") %>%
  drop_na()

all <- list(Agla, Trausti, Hjalti, Jónas, Harpa, Kata)

names(all) <- c("Agla", "Trausti", "Hjalti", "Jónas", "Harpa", "Kata")





