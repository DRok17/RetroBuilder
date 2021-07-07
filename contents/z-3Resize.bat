@echo off
copy "bg.jpg" ".\backup"
copy "bg.jfif" ".\backup"
copy "icon0.jfif" ".\backup"
copy "icon0.jpg" ".\backup"

@echo off
call scale.bat -source bg.png -target bg1.png -max-height 540 -max-width 960 -keep-ratio no -force yes
call scale.bat -source icon0.png -target icon01.png -max-height 128 -max-width 128 -keep-ratio no -force yes
call scale.bat -source startup.png -target startup1.png -max-height 158 -max-width 280 -keep-ratio no -force yes

@echo off
del bg.png
del icon0.png
del startup.png
ren bg1.png bg.png
ren icon01.png icon0.png
ren startup1.png startup.png

@echo off
del "bg.bmp"
del "bg.jpg"
del "bg.jpeg"
del "bg.jfif"
del "bg.tiff"
del "icon0.bmp"
del "icon0.jpg"
del "icon0.jpeg"
del "icon0.jfif"
del "icon0.tiff"
del "startup.bmp"
del "startup.jpg"
del "startup.jpeg"
del "startup.jfif"
del "startup.tiff"
exit
