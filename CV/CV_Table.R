# Format table for CV ourput

CV_table <-  function(df) {
  df %>% 
    knitr::kable(col.names = NULL,
                 escape = FALSE,
                 align = 1L,
                 longtable = TRUE,
                 format = "latex"
                 ) %>%
    kableExtra::kable_styling(full_width = F) %>%
    kableExtra::column_spec(1, color = "darkgray", width = "3.5em") %>%
    kableExtra::column_spec(2, width = "40.5em")
  
}