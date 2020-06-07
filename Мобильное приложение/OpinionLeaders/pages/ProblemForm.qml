import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: pageProblemForm
    background: Rectangle {
        id: background
        anchors.fill: parent
        color: "#ebecff"
    }

    Rectangle {
        id: rectangle
        width: 145
        height: 145
        color: "#b8b8b8"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 17
        Image {
            id: immmg1
            anchors.fill: parent
            anchors.margins: 20
            source: "qrc:/images/images/photo.svg"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    let b = addingProblemStackController.push("qrc:/pages/CameraController.qml");
                }
            }
        }
    }

    Rectangle {
        id: rectangle1
        width: 145
        height: 145
        color: "#b8b8b8"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: rectangle.right
        anchors.leftMargin: 16
        Image {
            id: immmg2
            anchors.fill: parent
            anchors.margins: 20
            source: "qrc:/images/images/photo.svg"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    let b = addingProblemStackController.push("qrc:/pages/CameraController.qml");
                }
            }
        }
    }

    Text {
        id: element
        height: 26
        text: qsTr("Заголовок:")
        anchors.left: parent.left
        anchors.leftMargin: 17
        anchors.top: rectangle.bottom
        anchors.topMargin: 22
        anchors.right: parent.right
        anchors.rightMargin: 8
        font.pixelSize: 19
    }

    Rectangle {
        id: rectangle2
        height: 81
        color: "#ffffff"
        anchors.left: parent.left
        anchors.leftMargin: 17
        anchors.top: element.bottom
        anchors.topMargin: 6
        anchors.right: parent.right
        anchors.rightMargin: 8

        TextEdit {
            id: textEdit
            text: qsTr("")
            font.family: "Ubuntu"
            wrapMode: Text.WordWrap
            selectionColor: "#14acb4"
            anchors.rightMargin: 7
            anchors.leftMargin: 7
            anchors.bottomMargin: 7
            anchors.topMargin: 7
            anchors.fill: parent
            font.pixelSize: 18
        }
    }

    Text {
        id: element1
        width: 615
        height: 23
        text: qsTr("Публикация")
        anchors.left: parent.left
        anchors.leftMargin: 17
        anchors.top: rectangle2.bottom
        anchors.topMargin: 6
        font.pixelSize: 19
    }

    Rectangle {
        id: rectangle3
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 67
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 17
        anchors.top: element1.bottom
        anchors.topMargin: 6

        TextEdit {
            id: textEdit1
            text: qsTr("")
            anchors.rightMargin: 7
            anchors.leftMargin: 7
            anchors.bottomMargin: 7
            anchors.topMargin: 7
            anchors.fill: parent
            font.pixelSize: 12
        }
    }

    Button {
        id: button
        y: 419
        width: 102
        height: 28
        text: qsTr("Другие файлы...")
        anchors.left: parent.left
        anchors.leftMargin: 17
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 33
    }

    Button {
        id: button1
        x: 363
        y: 419
        width: 130
        height: 28
        text: qsTr("Опубликовать")
        anchors.right: button2.left
        anchors.rightMargin: 9
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 33
    }

    Button {
        id: button2
        x: 502
        y: 419
        width: 130
        height: 28
        text: qsTr("Выход")
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 33
        onClicked: { mainStack.pop(); }
    }

}
//She Wants Revenge - Take the World

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:17;anchors_y:20}D{i:3;anchors_x:178;anchors_y:20}
D{i:4;anchors_height:26;anchors_width:615;anchors_x:17;anchors_y:187}D{i:6;anchors_height:20;anchors_width:80;anchors_x:8;anchors_y:8}
D{i:5;anchors_height:63;anchors_width:615;anchors_x:17;anchors_y:219}D{i:7;anchors_x:17;anchors_y:306}
D{i:9;anchors_height:20;anchors_width:80;anchors_x:8;anchors_y:8}D{i:8;anchors_height:78;anchors_width:615;anchors_x:17;anchors_y:335}
D{i:10;anchors_x:17}
}
##^##*/
