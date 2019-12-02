# CV with Rmarkdown and ORCID

I have made my CV extracting all my personal information from ORCID, except the Teaching section (which is not in ORCID). I only need to keep up-to-date my ORCID website and my CV is directly build running the .Rmd. I have used the format *Awesome* (package{vitae}), and If possible add my publications information from Scopus.   

First of all I got my ORCID API Key and save it in .Renviron, that way I can run Rmarkdown without problems. 

```
orcid_auth()               # API key (without Bearer)
usethis::edit_r_environ()  # Open up the Renviron file save the key as: ORCID_TOKEN="yourkey"
```

Then the R session must be restarted, and for double checking that the Key was correctly saved I run:

```
Sys.getenv("ORCID_TOKEN")
```
