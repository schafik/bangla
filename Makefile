all: *.html

b1_demographics.html: b1_demographics.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_demographics.Rmd')" | R --no-save 
f1_1demo.html: f1_1demo.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_1demo.Rmd')" | R --no-save 
f1_2consumption.html: f1_2consumption.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_2consumption.Rmd')" | R --no-save 
f1_3savings.html: f1_3savings.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_3savings.Rmd')" | R --no-save 
f1_4loansremitt.html: f1_4loansremitt.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_4loansremitt.Rmd')" | R --no-save 
index.html: index.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('index.Rmd')" | R --no-save 
