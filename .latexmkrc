#!/usr/bin/env perl
$latex = "find . -type f -name '*.tex' | xargs sed -i'' -e 's/、/，/g' -e 's/。/．/g'; uplatex -synctex=1 -halt-on-error %O %S";
$dvipdf                      = 'dvipdfmx %O -o %D %S';
$makeindex                   = 'mendex -U %O -o %D %S';
$max_repeat                  = 5;
$pdf_mode                    = 3; # generates pdf via dvipdfmx