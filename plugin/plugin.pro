TEMPLATE = lib
TARGET = lipstickplugin
VERSION = 0.1

CONFIG += qt plugin
QT += core gui declarative

INSTALLS = target qmldirfile
qmldirfile.files = qmldir
qmldirfile.path = /usr/lib/qt4/imports/org/nemomobile/lipstick
target.path = /usr/lib/qt4/imports/org/nemomobile/lipstick

linux-g++-64 {
    qmldirfile.path = /usr/lib64/qt4/imports/org/nemomobile/lipstick
    target.path = /usr/lib64/qt4/imports/org/nemomobile/lipstick
}

DEPENDPATH += "../src"
INCLUDEPATH += "../src"
LIBS += -L"../src" -llipstick

HEADERS += \
    lipstickplugin.h

SOURCES += \
    lipstickplugin.cpp

OTHER_FILES += \
    qmldir

QMAKE_CXXFLAGS += \
    -Werror \
    -g \
    -std=c++0x \
    -fPIC \
    -fvisibility=hidden \
    -fvisibility-inlines-hidden

QMAKE_LFLAGS += \
    -pie \
    -rdynamic