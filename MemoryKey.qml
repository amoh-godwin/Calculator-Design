import QtQuick 2.3
import QtQuick.Layouts 1.3

Rectangle {
    width: 72
    Layout.fillHeight: true
    color: "#4a4a4a"
    signal hover(); signal click()

    property string value: "MC"
    property string icon: ""

    onHover: {
        color = "#1a1a1a"
    }

    onClick: {
        color = "#7a7a7a"
    }

    Text {
        text: value
        anchors.centerIn: parent
        font.pixelSize: 12
        color: "white"
        visible: icon == "" ? true: false
    }

    Image {
        visible: icon != "" ? true: false
        anchors.fill: parent
        source: icon
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
