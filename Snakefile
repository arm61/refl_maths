rule target: 
    input:
        'handout.tex',
        'handout.bib',
        'kine.pdf',
        'refr.pdf',
        'dyna.pdf',
        'likelihood.pdf',
        'ackley.pdf'
    output:
        'handout.pdf'
    run:
        shell('pdflatex handout.tex')
        shell('bibtex handout.aux')
        shell('pdflatex handout.tex')
        shell('pdflatex handout.tex')