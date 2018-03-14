import QtQuick 2.4
import QtQuick.Layouts 1.3

Rectangle {
    Layout.fillWidth: true
    Layout.fillHeight: true
    property string content: "Header"
    color: "white"

    Text {
        width: parent.width
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Segoe UI"
        text: content
        font.pixelSize: 16
    }

}
