preview: screen
	open resume-screen.pdf

preview-print: print
	open resume-print.pdf

print: resume-print.pdf

screen: resume-screen.pdf

both: resume-print.pdf resume-screen.pdf

resume-print.tex: resume.tex
	ruby create_versions.rb

resume-screen.tex: resume.tex
	ruby create_versions.rb

resume-print.pdf: resume-print.tex friggeri-cv.cls
	xelatex resume-print.tex
	xelatex resume-print.tex

resume-screen.pdf: resume-screen.tex friggeri-cv.cls
	xelatex resume-screen.tex
	xelatex resume-screen.tex
