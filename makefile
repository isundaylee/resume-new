preview: resume.pdf
	open resume.pdf

resume.pdf: resume.tex
	xelatex resume.tex
	xelatex resume.tex
