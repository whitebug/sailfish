import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("Pause")
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-next"
            onTriggered: label.text = "Play"
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
            onTriggered: label.text = "Pause"
        }
        CoverAction {
            iconSource: "image://theme/icon-cover-next"
            onTriggered: label.text = "Play"
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
            onTriggered: label.text = "Pause"
        }
    }
}
