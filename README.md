# svg2pdf_tex
An automatic conversor for svg files to pdftex. This bash script parses all svg files in all subdirectories and generates the corresponding pdf and pdf_tex files to input in .tex documents.

# dependencies
 * bash console
 * inkscape

# how to use svg2pdf_tex
place the svg2pdf_tex.sh file in the directory of you .tex document. Provide execution permission as running
```
$ chmod +x svg2pdf_tex.sh
```
then run the script:
 - with the command `$ ./svg2pdf_tex.sh 0` if you dont want to regenerate the pdfs already existing in your directories
 - or `$ ./svg2pdf_tex.sh 1` if you want to do so.

# minimal tex document example
compile the file example.tex using pdflatex after the pdf and pdf_tex drawings are generated.

