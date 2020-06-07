import QtQuick 2.0
import QtQuick.Controls 2.12

Page {
    id: pageProfile

    Rectangle {
        id: rectangle
        x: 11
        y: 18
        width: 49
        height: 52
        color: "#ebecff"

        Image {
            id: image
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: element
        x: 66
        y: 8
        width: 244
        height: 39
        text: qsTr("Кононова")
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 25
    }

    Text {
        id: element1
        x: 66
        y: 47
        width: 244
        height: 23
        text: qsTr("Виктория")
        font.pixelSize: 17
    }

    Text {
        id: element2
        x: 66
        y: 76
        width: 244
        height: 23
        text: qsTr("Андреевна")
        font.pixelSize: 17
    }

    Rectangle {
        id: rectangle1
        x: 66
        y: 105
        width: 244
        height: 40
        color: "#bffcd3"

        Text {
            id: element3
            x: 8
            y: 8
            width: 228
            height: 26
            text: qsTr("09 марта 2000 г.")
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle2
        x: 11
        y: 178
        width: 299
        height: 40
        color: "#bffcfc"
        Text {
            id: element4
            x: 8
            y: 8
            width: 283
            height: 26
            text: qsTr("с. Кош-Агач, Республика Алтай")
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle3
        x: 11
        y: 253
        width: 299
        height: 40
        color: "#bffcfc"
        Text {
            id: element5
            x: 8
            y: 8
            width: 283
            height: 26
            text: qsTr("+7 (961) 999-01-05")
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Text {
        id: element6
        x: 11
        y: 233
        width: 299
        height: 14
        text: qsTr("Мобильный телефон")
        font.pixelSize: 12
    }

    Text {
        id: element7
        x: 11
        y: 158
        text: qsTr("Регион, населенный пункт")
        font.pixelSize: 12
    }

    Text {
        id: element8
        x: 11
        y: 326
        width: 299
        height: 14
        text: qsTr("Подтвержденные привязки")
        font.pixelSize: 12
    }

    Image {
        id: image1
        x: 11
        y: 351
        width: 49
        height: 44
        source: "qrc:/images/images/facebook.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image2
        x: 75
        y: 351
        width: 49
        height: 44
        source: "qrc:/images/images/odnoklassniki.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image3
        x: 136
        y: 351
        width: 49
        height: 44
        source: "qrc:/images/images/vk.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image4
        x: 200
        y: 351
        width: 49
        height: 44
        source: "qrc:/images/gosuslugi.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_height:100;anchors_width:100;anchors_x:8;anchors_y:8}
}
##^##*/
