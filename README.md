# 9os
Nyan (9) Cat OS written in asm (together with <a href="https://github.com/Olrik1">Olrik1</a>)

<img src="https://i.gyazo.com/5404eebfba2b0e9b1ff52022ca101b97.gif" />

## Building

To build 9os, start the delivered build-script for your OS.  

#### Windows
Run `make-win32.bat` by double-clicking it.

#### Linux
Run the shell script in your terminal using `./make-linux.sh`

#### Mac OS X
Run the shell script in your terminal using `./make-macosx.sh`

## Installation
This OS was made to be loaded via PXE, so you are required to run some sort of PXE server with pxelinux.  
Alternatively, you can use DOSBox to run 9os.com as a DOS binary, this will work just fine.  

## Credits
* NASM (http://www.nasm.us/)

## License
MIT License

Copyright (c) 2017 Maurice Heumann & Olrik Heuser

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
