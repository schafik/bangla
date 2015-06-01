all: *.html
1_demographics.html: 1_demographics.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('1_demographics.Rmd')" | R --no-save 
index.html: index.md
	echo "require(knitr); knit2html('index.md')" | R --no-save
