 set term postscript enhanced color font 'Times-Roman,20'
 set out "chi2.eps"
 
 set xlabel "{/Symbol k}" font 'Times-Italic,22'
 set ylabel "{/Symbol dc}^2" font 'Times-Italic,22'

 #set title "MadGraph5\\_aMCatNLO + NNPDF23\\_nlo\\_as\\_0118"
 #set label 1 "0.0 < |y_{ll}| < 0.4" at graph 0.1, 0.4 font 'Times-Roman,20'
 #set label 2 "66 GeV < m_{ll} < 116 GeV" at graph 0.1, 0.3 font 'Times-Roman,20'

 f(x) = 0

 plot [0:11][-0.05:0.45] \
 "chi2.dat" u 1:(($2-$3)/$3) pointtype 7 pointsize 2.0 lc rgb "red" t "Charm at NLO", \
 "chi2.dat" u 1:(($2-$3)/$3) with line lw 4 lc rgb "red" notitle, \
 "chi2.dat" u 1:(($4-$5)/$5) pointtype 7 pointsize 2.0 lc rgb "orange" t "Charm at NNLO", \
 "chi2.dat" u 1:(($4-$5)/$5) with line lw 4 lc rgb "orange" notitle, \
 "chi2.dat" u 1:(($6-$7)/$7) pointtype 7 pointsize 2.0 lc rgb "blue" t "Bottom at NLO", \
 "chi2.dat" u 1:(($6-$7)/$7) with line lw 4 lc rgb "blue" notitle, \
 "chi2.dat" u 1:(($8-$9)/$9) pointtype 7 pointsize 2.0 lc rgb "dark-green" t "Bottom at NNLO", \
 "chi2.dat" u 1:(($8-$9)/$9) with line lw 4 lc rgb "dark-green" notitle, \
 f(x) with line lw 4 lc rgb "black" notitle


 #plot [0:11]\
 "chi2.dat" u 1:2 with line lw 4 lc rgb "red"         t "BGMPU charm at NLO", \
 "chi2.dat" u 1:3 with line lw 4 lc rgb "dark-red"    t "FONLL charm at NLO", \
 "chi2.dat" u 1:4 with line lw 4 lc rgb "orange"      t "BGMPU charm at NNLO", \
 "chi2.dat" u 1:5 with line lw 4 lc rgb "dark-orange" t "FONLL charm at NNLO", \
 "chi2.dat" u 1:6 with line lw 4 lc rgb "blue"        t "BGMPU bottom at NLO", \
 "chi2.dat" u 1:7 with line lw 4 lc rgb "dark-blue"   t "FONLL bottom at NLO", \
 "chi2.dat" u 1:8 with line lw 4 lc rgb "green"       t "BGMPU bottom at NLO", \
 "chi2.dat" u 1:9 with line lw 4 lc rgb "dark-green"  t "FONLL bottom at NNLO"
