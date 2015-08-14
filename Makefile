all: *.html

b1_demographics.html: b1_demographics.Rmd 
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_demographics.Rmd')" | R --no-save 
b1_2assets.html: b1_2assets.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_2assets.Rmd')" | R --no-save 
b1_3numeracy.html: b1_3numeracy.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_3numeracy.Rmd')" | R --no-save 
b1_4consumption.html: b1_4consumption.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_4consumption.Rmd')" | R --no-save 
b1_5savings.html: b1_5savings.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_5savings.Rmd')" | R --no-save 
b1_6credit.html: b1_6credit.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_6credit.Rmd')" | R --no-save 
b1_7remit.html: b1_7remit.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_7remit.Rmd')" | R --no-save 
b1_8psych.html: b1_8psych.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('b1_8psych.Rmd')" | R --no-save 
f1_1demo.html: f1_1demo.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_1demo.Rmd')" | R --no-save 
f1_2consumption.html: f1_2consumption.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_2consumption.Rmd')" | R --no-save 
f1_3savings.html: f1_3savings.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_3savings.Rmd')" | R --no-save 
f1_4loansremitt.html: f1_4loansremitt.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('f1_4loansremitt.Rmd')" | R --no-save 
phone.html: phone.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('phone.Rmd')" | R --no-save 
index.html: index.Rmd
	echo "require(knitr); require(rmarkdown); rmarkdown::render('index.Rmd')" | R --no-save 
