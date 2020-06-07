import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import "./pages"

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 853
    title: qsTr("Лидеры мнения")

    ListModel { id: postModel }


    //Заголовок окна
    header: Rectangle{
        id: rect1
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        height: 44

        Button {
            x: 287
            y: 8
            width: 185
            height: 28
            background: Image {
                anchors.fill: parent
                id: buttonBackIMG
                source: "qrc:/images/images/initiate.png"
            }
            onPressed: { buttonBackIMG.source="qrc:/images/images/initiate-pressed.png"; }
            onReleased: { buttonBackIMG.source="qrc:/images/images/initiate.png"; }
            onClicked: { mainStack.push("qrc:/pages/AddingProblem.qml"); rectangle.color="transparent"; rectangle2.color="transparent"; }
        }

        Text {
            id: element
            x: 8
            y: 11
            width: 103
            height: 22
            text: qsTr("Популярное")
            font.pixelSize: 18

            Rectangle {
                id: rectangle
                x: 0
                y: 24
                width: 103
                height: 2
                color: { if (mainSwipe.currentIndex===0) return "#000000"; else return "transparent"; }
            }
        }

        Text {
            id: element1
            x: 141
            y: 11
            text: qsTr("Рекомендации")
            font.pixelSize: 18
            Rectangle {
                id: rectangle2
                x: 0
                y: 24
                width: 118
                height: 2
                color: { if (mainSwipe.currentIndex===1) return "#000000"; else return "transparent"; }
            }
        }
    }


    //Отображение контента
    StackView {
        id: mainStack
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: rect1.bottom
        anchors.topMargin: 0

        //Страница контента
        initialItem: Page {
            SwipeView {
                id: mainSwipe
                anchors.fill: parent
                Board {}
                PopularOpinions {}
                onCurrentIndexChanged: {

                }
            }

        }
    }


    //Боковое раскрывающееся меню
    Drawer{
        id: drawer
        width: 230
        height: parent.height
        x: 0
        y: 0
        background: Rectangle {
            color: "white"
            anchors.fill: parent

            Image {
                id: logo
                anchors.top: parent.top
                anchors.left: parent.left
                width: 319*0.6
                height: 103*0.6
                anchors.topMargin: 5
                anchors.leftMargin: 5
                source: "qrc:/images/images/logo.png"
            }

            ListView {
                id: listView
                currentIndex: -1
                anchors.top: logo.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                delegate: ItemDelegate {
                    width: parent.width
                    text: model.title
                    icon.source: model.icon
                    icon.height: 20
                    icon.width: 20
                    icon.color: "transparent"
                    font.pointSize: 16
                    highlighted: ListView.isCurrentItem
                    onClicked: {
                        mainStack.push(model.source)
                        drawer.close();
                    }
                }

                model: ListModel
                {
                    ListElement { title: "Мой профиль"; source: "qrc:/pages/Profile.qml"; icon:"qrc:/images/images/006-user-1.svg"}
                    ListElement { title: "Сообщения"; source: "qrc:/pages/SearchPerson.qml"; icon:"qrc:/images/images/108-chat.png"}
                    ListElement { title: "Достижения"; source: "qrc:/pages/AddEmployer.qml"; icon:"qrc:/images/images/star.png" }
                }
                ScrollIndicator.vertical: ScrollIndicator { }
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}D{i:10;anchors_height:807;anchors_y:46}D{i:11;anchors_height:807;anchors_y:46}
D{i:14;anchors_height:807;anchors_y:46}D{i:16;anchors_height:807;anchors_y:46}D{i:12;anchors_height:807;anchors_y:46}
D{i:9;anchors_height:807;anchors_y:46}D{i:8;anchors_height:807;anchors_y:46}
}
##^##*/
