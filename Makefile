all:
	musixtex -l -p main.tex
	biber main
	musixtex -l -p main.tex
	mv main.pdf out.pdf

clean:
	rm -rf main.aux main.toc missfont.log musixtex.log *.idx *.ilg *.ind main.out *.bbl *.bcf *.blg main.run.xml
