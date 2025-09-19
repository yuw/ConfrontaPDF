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
