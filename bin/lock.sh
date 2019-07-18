#!/bin/bash

IMG='/tmp/i3lock.png'
SCT='import -silent -window root'

BLUR="-blur 2x3" 
PIXEL="-scale 25% -scale 400%" 
GRAY="-colorspace Gray -gamma 0.7"
SEPIA="-sepia-tone 80%"
CHARCOAL="-charcoal 5 "
PAINT="-paint 1"
SPREAD="-interpolate nearest -virtual-pixel mirror -spread 5"
VIGNETTE="-background black -vignette 0x5" 

EFFECT[0]=$BLUR
EFFECT[1]=$PIXEL
EFFECT[2]=$GRAY
EFFECT[3]=$SEPIAL
EFFECT[4]=$CHARCOAL
EFFECT[5]=$PRINT
EFFECT[6]=$SPREAD
EFFECT[7]=$VIGNETTE

ASIZE=${#EFFECT[@]}
INDEX=$(($RANDOM % $ASIZE))

echo ${EFFECT[$INDEX]}


# Take screenshot
$SCT $IMG

# Random effect
convert $IMG ${EFFECT[$INDEX]} $IMG

# Lock with screenshot
i3lock -i $IMG
rm  -f $IMG
