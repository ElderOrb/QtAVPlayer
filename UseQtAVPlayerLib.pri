INCLUDEPATH += $$absolute_path($$QTAVPLAYER_SRC/src) $$absolute_path($$QTAVPLAYER_SRC/src/QtAVPlayer)
message('UseQtAVPlayerLib.pri INCLUDEPATH: ' $$INCLUDEPATH)

win32: {
    CONFIG(debug, debug|release) {
        BUILD_SUFFIX=d
        BUILD_DIR=debug
    } else:CONFIG(release, debug|release) {
        BUILD_SUFFIX=
        BUILD_DIR=release
    }

    win32-g++: {
        BUILD_SUFFIX=
    }
}

win32: {
    LIBS += -L$$QTAVPLAYER_LIB/src/QtAVPlayer/$${BUILD_DIR} -lQtAVPlayer
}
!win32: {
    LIBS += -L$$QTAVPLAYER_LIB/src/QtAVPlayer -lQtAVPlayer
}

message('UseQtAVPlayerLib.pri LIBS: ' $$LIBS)
