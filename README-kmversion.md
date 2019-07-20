# Build

1. install Xcode.
2. setup Homebrew.
3. brew install qt (5.13.0)
4. brew install poppler (0.77.0)
5. (in this directory)
6. git clone https://github.com/arl/macdeployqtfix.git
7. . ./env.sh
8. lrelease confrontapdf.pro
9. qmake
10. make
11. macdeployqt build/ConfrontaPDF.app/
12. python macdeployqtfix/macdeployqtfix.py   build/ConfrontaPDF.app/Contents/MacOS/ConfrontaPDF /usr/local/Cellar/qt/5.13.0/
13. macdeployqt build/ConfrontaPDF.app/ -dmg

# Deploy

1. copy build/ConfrontaPDF.dmg, poppler-data-0.77.0.tar.gz, and copy-poppler.sh.
2. extract ConfrontaPDF.dmg and install ConfrontaPDF somehwhere.
3. ./copy-poppler.sh
