# name:          scatter.gp
# version:       see VERSION.md
# synopsis:      scatter plots from CSV data.
# license:       BSD3
# license-file:  LICENSE.md
# author:        art rimbaud
# maintainer:    rimbaudcode[at]gmail(DoT)com
# copyright:     (c) 2016 rimbaudcode
# category:      System

# add 0 to cast String to Int
XVALUES=ARG1 + 0
YVALUES=ARG2 + 0
#
FILE=ARG3

TITLE=FILE." - ".system("date")

set terminal dumb;
set autoscale;
set datafile separator ",";
set tics nomirror;
set xtics scale 0;
set ytics scale 0;
unset border;
unset key;
set title TITLE;
plot FILE using XVALUES:YVALUES with lines;
exit gnuplot;
