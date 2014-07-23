#!/bin/bash
COMBOS()
{
cat<<EOF
hammerhead
anzu
coconut
codina
codinalte
deb
d2lte
d710
d800
d801
d802
d803
dlx
e980
evita
falcon
find5
flo
geeb
gee
golden
grouper
haida
hallon
hlte
honami
i9100g
i605
i9300
i9305
i9500
jactiveltexx
janice
iyokan
jewel
jflte
klte
ls980
m4
m7att
m7spr
m7tmo
m7ul
m7vzw
m8
maguro
mango
manta
mako
maserati
mondrianwifi
moto_msm8960
moto_msm8960dt
n1
nicki
p3110
p880
pollux
pollux_windy
satsuma
sirius
skomer
smultron
t0lteatt
t0ltetmo
taoshan
tf700t
tf701t
tilapia
toro
toroplus
urushi
v500
ville
vs980
yuga
EOF
}
#galaxysmtd

for x in `COMBOS | sort -h`; do 
  add_lunch_combo vanir_$x-userdebug
  add_lunch_combo vanir_$x-user
done
add_lunch_combo vanir_klte-eng
