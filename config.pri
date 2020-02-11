TEMPLATE = app
QT -= gui

CONFIG += c++14 console
CONFIG -= app_bundle
CONFIG += qt
CONFIG += thread

PROJECT_PATH = "$$PWD/$${PROJECT_NAME}"
PROJECT_SRC_PATH = "$${PROJECT_PATH}/src/"
PROJECT_HDR_PATH = "$${PROJECT_PATH}/include/"

cache( PROJECT_PATH, set )
cache( PROJECT_SRC_PATH, set )

BULDS_PATH = "$$PWD/builds/"
INPUT_FILE_NAME = "file_name.format"

CONFIG(debug, debug|release) {
    PATH_TO_INPUT_FILE = "$$PWD/Catalog/$${INPUT_FILE_NAME}"
    DEFINES = PATH_TO_INPUT_FILE=\"\\\"$${PATH_TO_INPUT_FILE}\\\"\" #Файл должен лежать в конкретном месте,
                                                #относительно каталога, в котором расположен "config.pri"
} else {
    DEFINES = PATH_TO_INPUT_FILE=\"\\\"$${INPUT_FILE_NAME}\\\"\"	#Файл должен лежать восле исполняемого файла
}

include($${PROJECT_PATH}/private_data.pri)    #Подключение приватных данных, файл будет отсутствовать на в репозитории
