# -------------------
# svg2pdftex: a bash script for automatic conversion from svg2pdftex using inkscape.
#
# Copyright (C) 2019, Jorge M. Pérez Zerpa
#
# This file is part of svg2pdftex.
#
# svg2pdftex is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# svg2pdftex is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with svg2pdf_tex.  If not, see <https://www.gnu.org/licenses/>.
# ----------------------

for f in $(find . -type f -name "*.svg"); do
  
  file="$(basename -s .svg -- $f)"
  dir="$(dirname $f)"
  pdffile="$dir/$file.pdf"
    
  if test -f "$pdffile"; then
    echo "$pdffile exist"
  else
    inkscape -D "$f" --export-latex --export-pdf="$pdffile"  
    echo "$pdffile generated"
  fi
done
