#!/bin/bash

OUT=AllKeys.txt
XML=AllKeys.xml

defaults domains |tr ', ' '\n'|sort -if|grep -v ^$ >tmp
defaults domains |tr ', ' '\n'|sort -if|grep -v ^$|while read k; do defaults find $k ; done > $OUT 2>&1
defaults domains |tr ', ' '\n'|sort -if|grep -v ^$|while read k; do defaults export $k - ; done > $XML  2>&1

