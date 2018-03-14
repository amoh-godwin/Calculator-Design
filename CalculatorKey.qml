import QtQuick 2.3
import QtQuick.Layouts 1.3

Rectangle {
    property string value: "4"
    property string icon: ""

    //width: 87.12
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "#4a4a4a"
    signal hover(); signal click()

    onHover: {
        color = "#1a1a1a"
    }

    onClick: {
        color = "#7a7a7a"
    }

    Text {
        text: value
        anchors.centerIn: parent
        font.pixelSize: 16
        color: "white"
        visible: icon == "" ? true: false
    }

    Image {
        source: icon
        anchors.centerIn: parent
        visible: icon != "" ? true: false
    }

    MouseArea {
       anchors.fill: parent
       hoverEnabled: true
       cursorShape: Qt.PointingHandCursor

       onEntered: hover()

       onExited: {
           parent.color = "#4a4a4a"
       }

       onPressed: click()

    }

}
