@echo off
if not exist bin (
mkdir bin
)
pushd "src"

..\deps\nasm -f bin -o ..\bin\9os.com 9os.asm
popd
pause