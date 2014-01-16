import QtQuick 2.1
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0

Item {
    id: root
    width: parent.width
    property alias text: textitem.text
    property alias subText: subtext.text
    property int blocsize: NemoItemSize.Default
    signal clicked
    height:
        switch(blocsize)
        {
        case NemoItemSize.Large : 84
                                  break
        case NemoItemSize.Small: 48
                                  break
        default: 60
                 break
        }

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
        color: "white"
        width:
            switch(blocsize)
            {
            case NemoItemSize.Large : 64
                                      break
            case NemoItemSize.Small: 32
                                      break
            default: 48
                     break
            }
        height:
            switch(blocsize)
            {
            case NemoItemSize.Large : 64
                                      break
            case NemoItemSize.Small: 32
                                      break
            default: 48
                     break
            }
        radius:
            switch(blocsize)
            {
            case NemoItemSize.Large : 32
                                      break
            case NemoItemSize.Small: 16
                                      break
            default: 24
                     break
            }
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
