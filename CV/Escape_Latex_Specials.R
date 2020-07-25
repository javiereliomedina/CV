# Remove latex symbols
Escape_latex_specials <- function(x) {
  x <- gsub("{\\'{a}}"    , "á"    , x, fixed = T)
  x <- gsub("{\\'{e}}"    , "é"    , x, fixed = T)
  x <- gsub("{\\'{i}}"    , "í"    , x, fixed = T)
  x <- gsub("{\\'{o}}"    , "ó"    , x, fixed = T)
  x <- gsub("{\\'{u}}"    , "ú"    , x, fixed = T)
  x <- gsub("{\\'{A}}"    , "Á"    , x, fixed = T)
  x <- gsub("{\\'{E}}"    , "É"    , x, fixed = T)
  x <- gsub("{\\'{I}}"    , "Í"    , x, fixed = T)
  x <- gsub("{\\'{O}}"    , "Ó"    , x, fixed = T)
  x <- gsub("{\\'{U}}"    , "Ú"    , x, fixed = T)
  x <- gsub("{"           , ""     , x, fixed = T)
  x <- gsub("}"           , ""     , x, fixed = T)
  x <- gsub("â\200"       , " - "  , x, fixed = T)
  x <- gsub("“H"          , " H"   , x, fixed = T)
  x <- gsub("_"           , "\\_" , x, fixed = T)
  x <- gsub(" <inf>"      , ""     , x, fixed = T)
  x <- gsub("</inf> -rich", "-rich", x, fixed = T)
  x <- gsub("<inf>"       , ""     , x, fixed = T)
  x <- gsub("</inf>"      , ""     , x, fixed = T)
  return(x)
}




