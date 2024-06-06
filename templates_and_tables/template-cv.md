---
title: "CV<br><br>John McLevey"
subtitle: "**he/him**"
toc: true
toc-expand: 1
---
 
<!-- 
DO NOT EDIT THIS PAGE.

- automatically generated by `compile_cv.sh` 
- copied from `curriculum-vitae/` 

all edits should be made to the cv data: 
(`curriculum-vitae/cv.md`) 

or the template files:
(`templates_and_tables/template-cv.tex`) (`templates_and_tables/template-cv.qmd`)
 -->


:::{.callout-note}
## DOWNLOAD PDF VERSION
You can download a PDF version of my CV **[here](../pdfs/cv.pdf)**.
:::

# Contact Information

:::: {.columns}
::: {.column width="45%"}
<!-- COLUMN 1 -->
$for(address)$
$address$<br>
$endfor$
:::
::: {.column width="10%"}
<!-- hack to create space between columns -->
:::
::: {.column width="45%"}
<!-- COLUMN 2 -->
Phone: $phone$<br>
Email: $email$<br>
<br>
$if(urls)$
$for(urls)$
[]($urls$)<br>
$endfor$
$endif$
:::
::::

# Appointments

$for(appointments)$

:::: {.columns}
::: {.column width="18%"}
<!-- COLUMN 1 -->
$appointments.years$<br>
:::
::: {.column width="2%"}
<!-- hack to create space between columns -->
:::
::: {.column width="80%"}
<!-- COLUMN 2 -->
**$appointments.job$**<br>
$if(appointments.notes)$ $appointments.notes$ <br>$endif$
$if(appointments.department)$ $appointments.department$ <br>$endif$
$if(appointments.cross)$ $appointments.cross$ <br>$endif$
$if(appointments.employer)$ $appointments.employer$ <br>$endif$
:::
::::
$endfor$

# Affiliations

$for(affiliations)$
:::: {.columns}
::: {.column width="18%"}
<!-- COLUMN 1 -->
$affiliations.years$<br>
:::
::: {.column width="2%"}
<!-- hack to create space between columns -->
:::
::: {.column width="80%"}
<!-- COLUMN 2 -->
**$affiliations.role$**<br>
$affiliations.organization$, $affiliations.notes$
<br>
:::
::::
$endfor$

# Education

$for(education)$

:::: {.columns}
::: {.column width="8%"}
<!-- COLUMN 1 -->
$education.year$<br>
:::
::: {.column width="2%"}
<!-- hack to create space between columns -->
:::
::: {.column width="90%"}
<!-- COLUMN 2 -->
**$education.subject$**<br>
$education.institute$, $education.city$
<br>
:::
::::
$endfor$

# Research Areas

$areas$

# Publications

$if(books)$
## Books
$for(books)$
:::: {.columns}
::: {.column width="8%"}
<!-- COLUMN 1 -->
$books.year$<br>
:::
::: {.column width="2%"}
<!-- hack to create space between columns -->
:::
::: {.column width="90%"}
<!-- COLUMN 2 -->
$books.authors$. *$books.title$*. $books.city$: $books.press$.<br>
:::
::::
$endfor$
$endif$


$if(articles)$

## Journal Articles

*Italicized* authors were students at time of publication.   

$for(articles)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$articles.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$articles.authors$. "$articles.title$." *$articles.journal$*. $if(articles.volume)$$articles.volume$$endif$$if(articles.issue)$($articles.issue$)$endif$$if(articles.pages)$: $articles.pages$.$endif$<br>
:::

::::
$endfor$
$endif$


$if(chapters)$

## Chapters in Edited Volumes

*Italicized* authors were students at time of publication.   

$for(chapters)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$chapters.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$chapters.authors$. "$chapters.title$." In $chapters.editors$ (Eds) *$chapters.book$*. $chapters.city$: $chapters.press$. <br>
:::

::::
$endfor$
$endif$

$if(issues)$

## Edited Special Issues

$for(issues)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$issues.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$issues.editors$ (Guest Journal Editors) "$issues.theme$." Special issue of *$issues.journal$*. <br>
:::

::::
$endfor$
$endif$


$if(article-manuscripts)$
## Article Manuscripts in Progress
$for(article-manuscripts)$

:::: {.columns}

::: {.column width="18%"}
<!-- COLUMN 1 -->
$article-manuscripts.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="80%"}
<!-- COLUMN 2 -->
$article-manuscripts.authors$. "$article-manuscripts.title$." $article-manuscripts.status$. <br>
:::

::::
$endfor$
$endif$



$if(book-manuscripts)$

## Book Manuscripts in Progress

$for(book-manuscripts)$

:::: {.columns}

::: {.column width="18%"}
<!-- COLUMN 1 -->
$book-manuscripts.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="80%"}
<!-- COLUMN 2 -->
$book-manuscripts.authors$. "$book-manuscripts.title$." $book-manuscripts.status$. <br>
:::

::::
$endfor$
$endif$


$if(reports)$

## Research \& Policy Reports

$for(reports)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$reports.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$reports.authors$. "$reports.report$." $reports.client$ <br>
:::

::::
$endfor$
$endif$



$if(misc)$

## Reviews and Other Short Non-Refereed Publications

$for(misc)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$misc.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$misc.authors$. "$misc.title$." $misc.details$ <br>
:::

::::
$endfor$
$endif$





$if(grants)$

# Research Grants

$for(grants)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$grants.years$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
*$grants.title$*<br>
$grants.amount$ -- $grants.grant$<br>
$grants.pi$ (Principal Investigator)$if(grants.ci)$, $grants.ci$ (Co-investigators)$endif$$if(grants.collaborators)$, $grants.collaborators$ (Collaborators)$endif$. <br>
:::

::::
$endfor$
$endif$




$if(teachinggrants)$

# Teaching Grants

$for(teachinggrants)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$teachinggrants.years$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
*$teachinggrants.title$*<br>
$teachinggrants.amount$ -- $teachinggrants.grant$<br>
$teachinggrants.pi$ (Principal Investigator)$if(teachinggrants.ci)$, $teachinggrants.ci$ (Co-investigators)$endif$$if(teachinggrants.collaborators)$, $teachinggrants.collaborators$ (Collaborators)$endif$. <br>
:::

::::
$endfor$
$endif$




$if(awards)$

# Awards and Selected Scholarships

$for(awards)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$awards.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
$awards.award$<br>
$if(awards.amount)$$awards.amount$ -- $endif$$if(awards.organization)$*$awards.organization$*$endif$ <br>
:::

::::
$endfor$
$endif$




$if(contracts)$

# Research Contracts

$for(contracts)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$contracts.years$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
*$contracts.title$*<br>
$if(contracts.contracted)$$contracts.contracted$$endif$. $contracts.organization$. <br>
:::

::::
$endfor$
$endif$


$if(software)$

# (Selected) Scientific Software, Designed and Developed

$for(software)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
`$software.package$`<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
$software.description$ It is designed, developed, and maintained by $software.development$.<br>
License: $software.license$<br>
:::

::::
$endfor$
$endif$



$if(othersoftware)$

## Other Contributions to Scientific Software

$for(othersoftware)$

:::: {.columns}

::: {.column width="18%"}
<!-- COLUMN 1 -->
`$othersoftware.package$`<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="80%"}
<!-- COLUMN 2 -->
$othersoftware.description$ <br>
:::

::::
$endfor$
$endif$





$if(conferences)$

# Conference Presentations

$for(conferences)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$conferences.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
$conferences.authors$. "$conferences.title$" *$conferences.conference$.* $if(conferences.location)$$conferences.location$$endif$.<br>
:::

::::
$endfor$
$endif$




$if(invited)$

# Invited Talks

$for(invited)$

:::: {.columns}

::: {.column width="10%"}
<!-- COLUMN 1 -->
$invited.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="88%"}
<!-- COLUMN 2 -->
$invited.authors$. "$invited.title$" *$invited.conference$*. $if(invited.location)$$invited.location$$endif$. <br>
:::

::::
$endfor$
$endif$





$if(courses)$

# Teaching

## Assigned Courses

$for(courses)$

:::: {.columns}

::: {.column width="20%"}
<!-- COLUMN 1 -->
$courses.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="78%"}
<!-- COLUMN 2 -->
$courses.id$ -- *$courses.name$*. <br>
$courses.level$, $courses.enrollment$ Students <br>
:::

::::
$endfor$
$endif$




$if(reading)$

## Reading Courses (Not Assigned)

$for(reading)$

:::: {.columns}

::: {.column width="20%"}
<!-- COLUMN 1 -->
$reading.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="78%"}
<!-- COLUMN 2 -->
*$reading.name$* <br>
$reading.level$<br>
:::

::::
$endfor$
$endif$




# Student Supervision


$if(phd)$

## PhD Student Supervision and Dissertation Committee Membership

$for(phd)$

:::: {.columns}

::: {.column width="12%"}
<!-- COLUMN 1 -->
$phd.status$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="86%"}
<!-- COLUMN 2 -->
$phd.student$ ($phd.department$) <br>
$phd.supervisor$ (Supervisor)$if(phd.committee)$ + $phd.committee$$endif$ $if(phd.enddate)$<br>$phd.enddate$$endif$<br>
:::

::::
$endfor$
$endif$


$if(masters)$

## Master of Arts (MA) and Master of Science (MSc) Student Theses

$for(masters)$

:::: {.columns}

::: {.column width="12%"}
<!-- COLUMN 1 -->
$masters.status$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="86%"}
<!-- COLUMN 2 -->
$masters.student$ ($masters.department$) <br>
Advisory Role: $masters.role$<br>
:::

::::
$endfor$
$endif$


$if(undergraduate)$

## Supervised Undergraduate Honours Theses & Design Projects

$for(undergraduate)$

:::: {.columns}

::: {.column width="12%"}
<!-- COLUMN 1 -->
$undergraduate.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="86%"}
<!-- COLUMN 2 -->
$undergraduate.student$ ($undergraduate.department$) $if(undergraduate.thesis)$ "$undergraduate.thesis$" $endif$ <br>
:::

::::
$endfor$
$endif$




$if(hqp)$

## Highly Qualified Personnel (HQP) Training<br>(Paid Research Positions)

$for(hqp)$

:::: {.columns}

::: {.column width="8%"}
<!-- COLUMN 1 -->
$hqp.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="90%"}
<!-- COLUMN 2 -->
$if(hqp.gra)$**Graduate HQP**<br>$hqp.gra$$endif$<br>
$if(hqp.ura)$ <br>**Undergraduate HQP**<br>$hqp.ura$$endif$<br>
:::

::::
$endfor$
$endif$



$if(othergrad)$

## Other Highly Qualified Personnel (HQP) Training<br>(Workshops, Short Courses)

$for(othergrad)$

:::: {.columns}

::: {.column width="12%"}
<!-- COLUMN 1 -->
$othergrad.year$<br>
:::

::: {.column width="2%"}
<!-- hack to create space between columns -->
:::

::: {.column width="86%"}
<!-- COLUMN 2 -->
$if(othergrad.training)$ $othergrad.training$ $endif$<br>
:::

::::
$endfor$
$endif$


$if(profession)$
# Service to the Profession
$for(profession)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$profession.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$if(profession.role)$ $profession.role$ $endif$<br>    
:::    
::::    
$endfor$    
$endif$    

$if(prarticles)$     
## Peer Reviewing - Academic Journals
<ul>
  $for(prarticles)$<li>$prarticles.journal$</li>$endfor$  
</ul>
$endif$    
<br>

$if(prbooks)$     
## Peer Reviewing - Books
<ul>
  $for(prbooks)$<li>$prbooks.book$</li>$endfor$   
</ul>
$endif$    
<br>


$if(prgrants)$
## Peer Reviewing / Evaluation - Grants
$for(prgrants)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$prgrants.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$prgrants.grant$<br>    
:::    
::::    
$endfor$    
$endif$    

$if(prother)$
## Peer Reviewing / Evaluation - Other
$for(prother)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$prother.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$prother.what$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(sessions)$
## Conference Sessions Organized
$for(sessions)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$sessions.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$sessions.session$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(suwaterloo)$
# Service to the University   
## University of Waterloo
$for(suwaterloo)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$suwaterloo.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$suwaterloo.role$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(mcmaster)$
## McMaster University
$for(mcmaster)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$mcmaster.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$mcmaster.role$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(training)$
# Additional Training and Professional Development
$for(training)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$training.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$training.training$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(rata)$
# Research and Teaching Assistantships (Graduate School, 2008-2013)
$for(rata)$    
:::: {.columns}    
::: {.column width="12%"}    
<!-- COLUMN 1 -->    
$rata.year$<br>    
:::    
::: {.column width="2%"}    
<!-- hack to create space between columns -->    
:::    
::: {.column width="86%"}    
<!-- COLUMN 2 -->    
$rata.position$<br>    
:::    
::::    
$endfor$    
$endif$ 

$if(memberships)$     
# Professional Memberships
$memberships$   
$endif$ 
<br>