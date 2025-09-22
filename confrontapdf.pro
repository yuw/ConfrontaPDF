# NOTES.txt
# CHANGES
# README
# help.html
# confrontapdf.1
#DEFINES	     += DEBUG

include(confrontapdf.pri)


DESTDIR = build
OBJECTS_DIR = build/a/obj
MOC_DIR = build/a/moc
UI_DIR = build/a/ui
UI_HEADERS_DIR = buildui/a/include
UI_SOURCES_DIR = buildui/a/src
RCC_DIR = build/a/rcc


# ライブラリパスを追加
LIBS += -L/opt/homebrew/opt/poppler-qt5/lib -lpoppler-qt5

# インクルードパスも追加
INCLUDEPATH += /opt/homebrew/opt/poppler-qt5/include

# AGLを明示的に除外
# macOSの最小バージョンを上げる
# 実際のバージョンに合わせる # sw_vers -productVersion
macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 26.0# macOSの最小バージョンを上げる
    QMAKE_LIBS_OPENGL = -framework OpenGL# AGLを明示的に除外
    LIBS -= -framework AGL
}
