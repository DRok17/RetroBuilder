@echo off
copy "bg.jpg" ".\backup"
copy "bg.jfif" ".\backup"
copy "icon0.jfif" ".\backup"
copy "icon0.jpg" ".\backup"

@echo off
call scale.bat -source bg.png -target bg1.png -max-height 500 -max-width 840 -keep-ratio no -force yes
call scale.bat -source icon0.png -target icon01.png -max-height 128 -max-width 128 -keep-ratio no -force yes
call scale.bat -source startup.png -target startup1.png -max-height 150 -max-width 250 -keep-ratio no -force yes

@echo off
del bg.png
del icon0.png
del startup.png
ren bg1.png bg.png
ren icon01.png icon0.png
ren startup1.png startup.png

@echo off
del "bg.jpg"
del "bg.jfif"
del "icon0.jpg"
del "icon0.jfif"
del "startup.jpg"
del "startup.jfif"
exit
