NAME         = QtARJ
TARGET       = $${NAME}
QT           = core
QT          -= gui
CONFIG(static,static|shared) {
# static version does not support Qt Script now
QT          -= script
} else {
QT          += script
}

load(qt_build_config)
load(qt_module)

INCLUDEPATH += $${PWD}/../../include/QtARJ

HEADERS     += $${PWD}/../../include/QtARJ/QtARJ
HEADERS     += $${PWD}/../../include/QtARJ/qtarj.h

SOURCES     += $${PWD}/qtarj.cpp
SOURCES     += $${PWD}/ScriptableARJ.cpp

OTHER_FILES += $${PWD}/../../include/$${NAME}/headers.pri

include ($${PWD}/../../doc/Qt/Qt.pri)
