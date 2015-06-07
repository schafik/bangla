all: *.html
b1_demographics.html: b1_demographics.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_demographics.Rmd')" | R --no-save 
b1_demographicsMsDs.html: b1_demographicsMsDs.md
 	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_demographicsMsDs.Rmd')" | R --no-save 
index.html: index.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('index.Rmd')" | R --no-save 
