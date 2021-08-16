# Format information from ORCID


# Function 1 for cleaning:  Education
format_ORCID_edu <- function(x) {
  
  x %>% 
    pluck("affiliation-group", "summaries") %>% 
    bind_rows() %>% 
    select(contains(c("start-date.year",
                      "end-date.year",
                      "role-title",
                      "organization.name",
                      "department-name",
                      "city",
                      "country"))) %>% 
    janitor::remove_empty(which = "cols") %>% 
    rename(Year_Start = contains("start-date.year"),
           Year_End   = contains("end-date.year"),
           Title      = contains("role-title"),
           Uni        = contains("organization.name"),
           Depr       = contains("department-name"),
           City       = contains("city"),
           Country    = contains("country")) %>% 
    mutate(Year_End = str_sub(Year_End, -2), 
           Title = bold_text(Title)) %>%
    unite(Year, Year_Start, Year_End, sep = "-", na.rm = TRUE) %>% 
    unite(Details, Title, Uni, City, Country, sep = ", ", na.rm = TRUE) %>%
    select(Year, Details) %>%
    arrange(desc(Year))
  
}

# Function 2 for cleaning:  Employment, Invited Positions, Service
format_ORCID_eis <- function(x) {
  
  x %>% 
    pluck("affiliation-group", "summaries") %>% 
    bind_rows() %>% 
    select(contains(c("start-date.year",
                      "end-date.year",
                      "role-title",
                      "organization.name",
                      "department-name",
                      "city",
                      "country"))) %>% 
    janitor::remove_empty(which = "cols") %>% 
    rename(Year_Start = contains("start-date.year"),
           Year_End   = contains("end-date.year"),
           Title      = contains("role-title"),
           Uni        = contains("organization.name"),
           Depr       = contains("department-name"),
           City       = contains("city"),
           Country    = contains("country")) %>% 
    mutate(Year_End = str_sub(Year_End, -2), 
           Title = bold_text(Title)) %>%
    unite(Year, Year_Start, Year_End, sep = "-", na.rm = TRUE) %>% 
    unite(Details, Title, Uni, Depr, City, Country, sep = ", ", na.rm = TRUE) %>%
    select(Year, Details) %>%
    arrange(desc(Year))
  
}


# Function 3 for cleaning: Memberships
format_ORCID_memb <- function(x) {
  x %>% 
    pluck("affiliation-group", "summaries") %>% 
    bind_rows() %>% 
    select(contains(c("start-date.year",
                      "end-date",
                      "role-title",
                      "organization.name",
                      "department-name",
                      "city",
                      "country"))) %>% 
    rename(Year_Start = contains("start-date.year"),
           Year_End   = contains("end-date"),
           Title      = contains("role-title"),
           Company    = contains("organization.name"),
           Depart     = contains("department-name"),
           City       = contains("city"),
           Country    = contains("country")) %>%  
    mutate(Company = bold_text(Company)) %>%
    unite(Year, Year_Start, Year_End, sep = "-", na.rm = TRUE) %>% 
    unite(Details, Company, Depart, City, Country, sep = ", ", na.rm = TRUE) %>%
    select(Year, Details) %>%
    arrange(desc(Year))
}
