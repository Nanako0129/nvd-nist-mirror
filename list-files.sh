#!/bin/sh

(
  echo '<html><body><table>'
  ls -ltrh $1 | grep -v total | awk '{ printf("<td> <a href=\"%s\">%s</a></td> <td>%s</td> <td> %s %s %s </td>\n", $9, $9, $5, $6, $7, $8); }'
  echo '</table></body></html>'
) > $1/index.html