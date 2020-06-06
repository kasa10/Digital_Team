import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 853
    title: qsTr("Лидеры мнения")

    ListModel { id: postModel }


    //Заголовок окна
    header: ToolBar
    {
        id: toolBar
        height: 32
        width: parent.width
        background: Rectangle {
            color: "#9db7e2"
        }

        ToolButton {
            id: buttonAddProblem
            text: "Предложить"
            width: 100
            height: 25
            anchors.left: parent.left
            anchors.leftMargin: 70
            y: 3
            onClicked: { stackView.replace("qrc:/pages/AddingProblem.qml"); }
        }

        ToolButton {
            id: button2
            text: "Мой регион"
            width: 100
            height: 25
            anchors.left: buttonAddProblem.right
            anchors.leftMargin: 20
            y: 3
            onClicked: { stackView.pop(); }
        }

        ToolButton {
            text: "Стек предложений"
            id: button3
            width: 100
            height: 25
            anchors.left: button2.right
            anchors.leftMargin: 20
            y: 3
            onClicked: { stackView.replace("qrc:/pages/Board.qml"); }
        }
    }

    StackView {
        id: stackView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolBar.bottom
        anchors.topMargin: 0
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
                        titleLabel.text = model.title
                        stackView.push(model.source)
                        drawer.close();
                    }
                }

                model: ListModel
                {
                    ListElement { title: "Мой профиль"; source: "qrc:/pages/EmployeeList.qml"; icon:"qrc:/images/images/006-user-1.png"}
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
    D{i:15;anchors_height:807;anchors_y:46}
}
##^##*/
