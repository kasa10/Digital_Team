import QtQuick 2.12
import QtQuick.Controls 2.5


Page {
    id: page
    anchors.fill: parent
    width: 1000
    height: 700

    title: qsTr("Сводка территориального мониторинга за прошедшие сутки")

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/images/stack/Outline_Map_of_Altai_Republic.svg"
        fillMode: Image.PreserveAspectFit
        layer.enabled: true

        Text {
            id: element
            x: 303
            y: 266
            width: 83
            height: 48
            text: qsTr("6 публикаций\n6 человек\n2 новых")
            font.pixelSize: 16
        }

        Text {
            id: element1
            x: 425
            y: 380
            width: 83
            height: 62
            text: qsTr("3 публикаций\n2 человек")
            font.pixelSize: 16
        }

        Text {
            id: element2
            x: 285
            y: 458
            width: 83
            height: 62
            text: qsTr("3 публикаций\n2 человек\n1 новых\n1 лидер")
            font.pixelSize: 16
        }

        Text {
            id: element3
            x: 548
            y: 122
            width: 83
            height: 62
            text: qsTr("3 публикаций\n2 человек\n1 новых\n1 лидер")
            font.pixelSize: 16
        }

        Image {
            id: image2
            x: 480
            y: 125
            width: 62
            height: 56
            source: "qrc:/images/cup.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image3
            x: 217
            y: 461
            width: 62
            height: 56
            source: "qrc:/images/cup.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: image1
        x: 10
        y: 10
        width: 200
        height: 80
        source: "qrc:/images/logo.png"
        fillMode: Image.PreserveAspectFit
    }
}



