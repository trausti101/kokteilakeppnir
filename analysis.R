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

for (x in all) {
  print(x$Dómari)
}
