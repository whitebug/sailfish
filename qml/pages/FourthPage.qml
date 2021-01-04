import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property alias firstTextFieldValue: firstTextField.text
    property alias secondTextFieldValue: secondTextField.text
    Column {
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader {}
        TextField {
            id: firstTextField
            width: parent.width
        }
        TextField {
            id: secondTextField
            width: parent.width
        }
    }
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top; bottom: urlField.top;
            left: parent.left; right: parent.right;
        }
        url: "https://www.youtube.com/watch?v=WuyiI_47w3Y"
    }
    TextField {
        id: urlField
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom;
        }
        text: "https://www.youtube.com/watch?v=WuyiI_47w3Y"
        label: webView.title
        EnterKey.onClicked: webView.url = text
    }
}

