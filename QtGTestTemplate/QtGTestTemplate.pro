include($${CONFIG_PATH}/config.pri)
include($${PROJECT_PATH}/src.pri)

TARGET = $${PROJECT_NAME}

DEFINES += QT_DEPRECATED_WARNINGS

VPATH += ./src

SOURCES += \
        main.cpp \

CONFIG(debug, debug|release) {
	DESTDIR = $${BULDS_PATH}debug/$${PROJECT_NAME}
} else {
	DESTDIR = $${BULDS_PATH}release/$${PROJECT_NAME}
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.rcc
UI_DIR = $$DESTDIR/.ui
