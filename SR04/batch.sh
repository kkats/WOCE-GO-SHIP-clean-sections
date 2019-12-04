#!/bin/sh
DIR=SR04
name=sr04
(cd ../output/gridded/$DIR; gzip *xyz)
for year in 1989 1990 1992 1996 1998 2005 2008 2010
do
    (cd ../output/reported/work; zip ../$DIR/${name}_${year}_ct1.zip ${name}_${year}_????_ct1.csv; rm -fr ${name}_${year}_????_ct1.csv)
done
