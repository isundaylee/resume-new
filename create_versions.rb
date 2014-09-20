content = File.read('resume.tex')
File.write('resume-print.tex', content.gsub('__VERSION__', 'print'))
File.write('resume-screen.tex', content.gsub('__VERSION__', ''))