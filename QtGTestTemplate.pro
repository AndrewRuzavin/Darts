TEMPLATE = subdirs

DISTFILES += \
	config.pri \

PROJECT_NAME = "QtGTestTemplate" #Измени имя проекта тут
cache(PROJECT_NAME)

SUBDIRS += $${PROJECT_NAME} $${PROJECT_NAME}Test

CONFIG_PATH = "$$PWD"

message(ccccc $$CONFIG_PATH)

cache( CONFIG_PATH, set )

CONFIG += ordered
