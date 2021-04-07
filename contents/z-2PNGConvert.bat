@echo off
call scale.bat -source bg.jpg -target bg1.png
call scale.bat -source bg.jfif -target bg1.png
call scale.bat -source icon0.jpg -target icon01.png
call scale.bat -source icon0.jfif -target icon01.png
call scale.bat -source startup.jpg -target startup1.png
call scale.bat -source startup.jfif -target startup1.png

@echo off
IF EXIST bg1.png (
    del "bg.png"
 ) ELSE (
    GOTO CONT1
 )
 :CONT1
 @echo off
 IF EXIST icon01.png (
     del "icon0.png"
  ) ELSE (
     GOTO CONT2
  )
:CONT2
  @echo off
  IF EXIST startup1.png (
      del "startup.png"
   ) ELSE (
      GOTO CONT3
   )

:CONT3
ren bg1.png bg.png
ren icon01.png icon0.png
ren startup1.png startup.png

@echo off
copy "bg.jpg" ".\backup"
copy "bg.jfif" ".\backup"
copy "icon0.jfif" ".\backup"
copy "icon0.jpg" ".\backup"
copy "startup.jpg" ".\backup"
copy "startup.jfif" ".\backup"



@echo off
del "bg.jpg"
del "bg.jfif"
del "icon0.jpg"
del "icon0.jfif"
del "startup.jpg"
del "startup.jfif"
exit
