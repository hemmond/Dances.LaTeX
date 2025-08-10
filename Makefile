all:
	musixtex -l -p main.tex
	biber main
	musixtex -l -p main.tex
	cp main.pdf out.pdf

clean:
	rm -rf main.pdf main.aux main.toc missfont.log musixtex.log *.idx *.ilg *.ind main.out *.bbl *.bcf *.blg main.run.xml