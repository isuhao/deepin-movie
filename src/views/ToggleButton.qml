/**
 * Copyright (C) 2014 Deepin Technology Co., Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 **/

import QtQuick 2.1

Image {
    property string imageName: ""
    property bool active: true
    source: imageName + (active ? "_active.png" : "_inactive.png")
    signal clicked
    signal entered
    signal exited

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        anchors.fill: parent
        
        onClicked: {
            active = !active
            parent.clicked()
        }

        onEntered: {
            parent.entered()
        }

        onExited: {
            parent.exited()
        }
    }
}
