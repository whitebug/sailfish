import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: thirdPage
    allowedOrientations: Orientation.All
    Column {
        Label {
            text: "the third page"
        }

        id: column
        anchors.horizontalCenter: parent.horizontalCenter
        width: page.width
        spacing: Theme.paddingLarge
        ProgressBar {
            width: parent.width
            indeterminate: true
            label: "Indeterminate"
        }
        ProgressCircle {
            id: progressCircle
            anchors.horizontalCenter: parent.horizontalCenter
            value: 0.35
        }
        BusyIndicator {
            id: busyIndicator
            anchors.horizontalCenter: parent.horizontalCenter
            running: true
            size: BusyIndicatorSize.Medium
        }
        Button {
            text: "Close"
            onPressed: pageStack.popAttached()
        }
    }
}
