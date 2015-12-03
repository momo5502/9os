#!/bin/bash
mkdir -p "bin"
pushd "src"
../deps/linux/nasm -f bin -o ../bin/9os.com 9os.asm
popd
