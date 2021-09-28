# Copyright (C) (2021) (Mathieu Bergeron) (mathieu.bergeron@cmontmorency.qc.ca)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# this program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License


nom_document="exemple_collegial"

fichier_pdf="$nom_document".pdf

nombre_pages=$(pdftk "$fichier_pdf" dump_data | grep NumberOfPages | cut -d":" -f2 | xargs)

derniere_page=$nombre_pages

nom_NIP="NIP_FQR"

nom_bibliographie="bibliographie"

pdftk "$fichier_pdf" cat $derniere_page output "$nom_bibliographie".pdf

pages_finales="1-$(($nombre_pages - 1))"
if [ $((pages_finales)) -eq 0 ]; then
	pages_finales="1"
fi;

pdftk "$fichier_pdf" cat "$pages_finales" output "$nom_NIP".pdf
