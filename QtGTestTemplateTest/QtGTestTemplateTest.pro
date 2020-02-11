include(gtest_dependency.pri)
include($${CONFIG_PATH}/config.pri)
include($${PROJECT_PATH}/src.pri)

TARGET = $${PROJECT_NAME}Test

INCLUDEPATH += \
	$$PROJECT_SRC_PATH

VPATH += ./src

SOURCES += \
	src/main.cpp \
	SomeCodeTest.cpp \

CONFIG(debug, debug|release) {
	DESTDIR = $${BULDS_PATH}debug/$${PROJECT_NAME}Test
} else {
	DESTDIR = $${BULDS_PATH}release/$${PROJECT_NAME}Test
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.rcc
UI_DIR = $$DESTDIR/.ui
