import QtQuick 2.6
import QtQuick.Controls 2.0
import "../Engine.js" as Engine

Page {
    id: board

    Component.onCompleted: {
        for(let i =0; i< Engine.Posts.length; i++)
        {
            postModel.append(Engine.Posts[i]);
        }
    }

    ListModel {id: postModel}

    ListView {
        id: listView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 6
        model: postModel
        delegate: Item {
            id: item1
            x: 5
            width: listView.width-10
            height: 500

            Column {
                id: col1
                spacing: 10
                Image {
                    id: rectangle
                    y: 5
                    height: 283
                    source: model.img_url
                    width: item1.width
                }
                Text {
                    id: element
                    width: item1.width
                    height: model.cap_height
                    text: model.caption
                    anchors.top: rectangle.bottom
                    wrapMode: Text.WordWrap
                    anchors.topMargin: 6
                    font.bold: true
                    font.pixelSize: 16
                }

                Image {
                    id: imgCup
                    source: "qrc:/images/images/cup.svg"
                    visible: model.isLeader
                    x: 20
                    y: 20
                }

                Text{
                    id: authorElement
                    anchors.top: element.bottom
                    width: item1.width
                    height: 20
                    font.pointSize: 13
                    font.bold: model.isLeader
                    color: "blue"
                    text: model.author
                }

                Text {
                    id: element1
                    width: item1.width
                    height: model.text_height
                    text: model.description
                    anchors.top: authorElement.bottom
                    wrapMode: Text.WordWrap
                    anchors.topMargin: 6
                    font.pixelSize: 12
                }

                Rectangle {
                    id: rectangle1
                    width: item1.width
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
                        text: model.likes
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
                        text: model.comments
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
                        text: model.viewed
                        anchors.right: parent.right
                        anchors.rightMargin: 4
                        font.pixelSize: 19
                        verticalAlignment: Text.AlignVCenter
                    }
                }

            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:618;anchors_x:8;anchors_y:0}
}
##^##*/
