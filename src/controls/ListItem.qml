import QtQuick 2.1
import QtQuick.Controls.Nemo 1.0

Item {
    id: root
    width: parent.width
    height:84

    property alias text: textitem.text
    property alias subText: subtext.text
    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "#11ffffff"
        visible: mouse.pressed
    }

    Label {
        id: textitem
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: subtext.text != "" ? -10 : 0
        anchors.left: parent.left
        anchors.leftMargin: cercle0.width + 64
    }


    Label {
        id: subtext
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 10
        anchors.left: parent.left
        anchors.leftMargin: cercle0.width + 64
    }

    Rectangle {
        id: cercle0
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 32
        width: 64
        height: 64
        radius: 32
        color: "white"
    }

    Rectangle {
        id: triangle
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 32
        width: 19
        height: 22
        color: "white"
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        onClicked: root.clicked()

    }

}
