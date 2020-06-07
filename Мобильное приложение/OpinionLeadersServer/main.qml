import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 1024
    height: 768
    title: qsTr("Автоматизированная система #ЛидерМнения")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        background: Rectangle{
            color: "#ebecff"
        }

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Text {
            text: stackView.currentItem.title
            anchors.centerIn: parent
            font.pointSize: 18
            font.bold: true
            color: "#000000"

        }
    }

    Drawer {
        id: drawer
        width: 500
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Территориальный мониторинг")
                font.pointSize: 14
                font.bold: true
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Рейтинги по муниципальным субъектам")
                font.pointSize: 14
                font.bold: true
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Лидеры мнения в разрезе муниципальных образований")
                font.pointSize: 14
                font.bold: true
                width: parent.width
                onClicked: {
                    stackView.push("Page3Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}
