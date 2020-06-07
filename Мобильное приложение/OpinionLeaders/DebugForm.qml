import QtQuick 2.0
import QtQuick.Controls 2.12

Page {
    id: page
    height: 527
    background: Rectangle{
        color: "#ebecff"
    }

    Rectangle {
        id: rectangle
        height: 283
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        anchors.top: parent.top
        anchors.topMargin: 8
    }

    Text {
        id: element
        x: 6
        width: 628
        height: 48
        text: qsTr("Caption")
        wrapMode: Text.WordWrap
        anchors.top: rectangle.bottom
        anchors.topMargin: 6
        font.bold: true
        font.pixelSize: 16
    }

    Text {
        id: element1
        x: 6
        width: 628
        height: 126
        text: qsTr("Text")
        anchors.top: element.bottom
        anchors.topMargin: 6
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle1
        x: 6
        width: 628
        height: 36
        color: "#00000000"
        anchors.top: element1.bottom
        anchors.topMargin: 6

        Image {
            id: image
            y: 8
            width: 28
            height: 28
            anchors.left: parent.left
            anchors.leftMargin: 4
            source: "qrc:/images/images/like.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element2
            y: 8
            width: 50
            height: 28
            text: qsTr("447")
            anchors.left: image.right
            anchors.leftMargin: 7
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 19
        }

        Image {
            id: image1
            y: 8
            width: 28
            height: 28
            anchors.left: element2.right
            anchors.leftMargin: 10
            source: "qrc:/images/images/108-chat.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element3
            y: 8
            width: 50
            height: 28
            text: qsTr("9")
            anchors.left: image1.right
            anchors.leftMargin: 7
            font.pixelSize: 19
            verticalAlignment: Text.AlignVCenter
        }

        Image {
            id: image2
            y: 8
            width: 28
            height: 28
            anchors.left: element3.right
            anchors.leftMargin: 10
            source: "qrc:/images/images/020-share.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element4
            y: 8
            width: 50
            height: 28
            text: qsTr("4")
            anchors.left: image2.right
            anchors.leftMargin: 7
            font.pixelSize: 19
            verticalAlignment: Text.AlignVCenter
        }

        Image {
            id: image3
            x: 544
            y: 8
            width: 28
            height: 28
            anchors.right: element5.left
            anchors.rightMargin: 7
            source: "qrc:/images/images/view.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element5
            x: 578
            y: 8
            width: 50
            height: 28
            text: qsTr("211")
            anchors.right: parent.right
            anchors.rightMargin: 4
            font.pixelSize: 19
            verticalAlignment: Text.AlignVCenter
        }
    }

}
