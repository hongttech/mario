#-------------------------------------------------
#
# Project created by QtCreator 2016-12-06T16:40:42
#
#-------------------------------------------------

QT     -= core gui
CONFIG += c++14

INCLUDEPATH += ../include

TARGET   = itat
TEMPLATE = lib

DEFINES += ITAT_LIBRARY

SOURCES += \
    ../src/mylog.c \
    ../src/str.c \
    ../src/threadpool.c \
    ../src/saltapi.cpp \
    ../src/httpapi.cpp \
    ../src/chinese.c

HEADERS += \
    ../include/itat_global.h \
    ../include/mylog.h \
    ../include/str.h \
    ../include/threadpool.h \
    ../include/saltapi.hpp \
    ../include/httpapi.hpp \
    ../include/chinese.h



###################### unix ############################
unix {
    DEFINES += _UNIX

    message("Building for unix")
    INCLUDEPATH += /usr/local/include

    LIBS += -lpthread -lrt

    target.path = /usr/local/bin/mario
    INSTALLS += target

    CONFIG(debug, debug|release) {
        DEFINES += _DEBUG_
        TARGET = itat-d
        message("Build for Debug version")
    }
    CONFIG(release, debug|release) {
        TARGET = itat
        message("Build for release version")
    }
}

###################### windows #########################
windows {
    DEFINES += _WINDOWS

    message("Building for Windows")


    CONFIG(debug, debug|release) {
        DEFINES += _DEBUG_
        TARGET = itat-d
        message("Build for Debug version")
    }
    CONFIG(release, debug|release) {
        TARGET = itat
        message("Build for release version")
    }

}


