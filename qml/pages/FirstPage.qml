import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
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
                id: button
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Кнопка"
                highlightColor: "blue"
                highlightBackgroundColor: "blue"
                onClicked: pageStack.pushAttached(
                               Qt.resolvedUrl("ThirdPage.qml"))
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: button.down ? "Нажата" : "Отпущена"
            }
            ValueButton {
                id: valueButton
                label: "Счётчик"
                description: "Считывает количество нажатий"
                value: value.toString() == "" ? "0" : value.toString()
                onPressed: {
                    value++
                }
            }
            ComboBox {
                label: "Combo"
                description: "combo comp"
                menu: ContextMenu {
                    MenuItem {text: "1"}
                    MenuItem {text: "2"}
                    MenuItem {text: "3"}
                    MenuItem {text: "4"}
                    MenuItem {text: "5"}
                }
                onValueChanged: {
                    console.log(value)
                }
            }
            TextSwitch {
                text: checked ? "Включен" : "Выключен"
            }
            Slider {
                width: parent.width
                maximumValue: 100
                minimumValue: 0
                stepSize: 1
                id: sliderM
                valueText: ""
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Текущее значение: " + sliderM.value
            }
        }
    }
}

