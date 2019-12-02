# CV and Cover letter

I have made my CV extracting all my personal information from ORCID, except the Teaching section (which is not in ORCID). Thus, I only need to keep up-to-date my ORCID website for automatically creating an update CV. I have used the format Awesome (package{vitae}), and if possible I synchronise ORCID and SCOPUS for getting my publication records.    

First of all I got my ORCID API Key and save it in .Renviron, that way I can run Rmarkdown without problems. 

```
orcid_auth()               # API key (without Bearer)
usethis::edit_r_environ()  # Open .Renviron file, and save the key as: ORCID_TOKEN="yourkey"
```

Then the R session must be restarted, and for double checking that the Key was correctly saved I run:

```
Sys.getenv("ORCID_TOKEN")
```

I have also uploaded a general **Cover Letter**, with the same format. 
