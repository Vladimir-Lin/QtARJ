QT             = core
QT            -= gui
QT            += QtARJ

CONFIG(debug, debug|release) {
TARGET         = arjtoold
} else {
TARGET         = arjtool
}

CONFIG        += console

TEMPLATE       = app

SOURCES       += $${PWD}/arjtool.cpp

win32 {
RC_FILE        = $${PWD}/arjtool.rc
OTHER_FILES   += $${PWD}/arjtool.rc
OTHER_FILES   += $${PWD}/*.js
}
