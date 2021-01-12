@echo off
echo Trying to compile and assemble...
g++ -Wall -c src/TestGL.cpp -o object_files/TestGL.o -I dependencies/glew/include -I dependencies/glfw/include -static-libgcc -static-libstdc++
echo Trying to link...
g++ -Wall object_files/TestGL.o -o debug/TestGL.exe -lglew32s -lglfw3 -lgdi32 -luser32 -lopengl32 -lkernel32 -L dependencies/glew/lib/Release/Win32 -L dependencies/glfw/lib-mingw
echo Done trying :D
echo Start the program?
pause
cd debug
TestGL
pause