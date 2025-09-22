# NOTES.txt
# CHANGES
# README
# help.html
# confrontapdfc.1
#DEFINES	     += DEBUG

DEFINES	     += COMPARA_IS_CONSOLE


include(confrontapdf.pri)

DESTDIR = build
OBJECTS_DIR = build/c/obj
MOC_DIR = build/c/moc
UI_DIR = build/c/ui
UI_HEADERS_DIR = buildui/c/include
UI_SOURCES_DIR = buildui/c/src
RCC_DIR = build/c/rcc


CONFIG   += console
# this is questionable for command line app on macos
CONFIG   -= app_bundle

# AGLを明示的に除外
# macOSの最小バージョンを上げる
# 実際のバージョンに合わせる # sw_vers -productVersion
macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 26.0# macOSの最小バージョンを上げる
    QMAKE_LIBS_OPENGL = -framework OpenGL# AGLを明示的に除外
    LIBS -= -framework AGL
}
