import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1024
    height: 768

    title: qsTr("Администрирование")

    Image {
        id: image
        x: 288
        y: 153
        width: 459
        height: 197
        source: "qrc:/images/logo.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: element
        x: 288
        y: 393
        width: 459
        height: 36
        text: qsTr("Система управления метрикой и статистикой")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 22
    }

    Text {
        id: element1
        x: 288
        y: 429
        width: 459
        height: 24
        color: "#0a3f6d"
        text: qsTr("Хакатон ЦИФРОВОЙ ПРОРЫВ 2020")
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: element2
        x: 288
        y: 613
        width: 459
        height: 24
        color: "#0a3f6d"
        text: qsTr("Разработка Digital Team. Все права защищены")
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
