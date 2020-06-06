import QtQuick 2.6
import QtQuick.Controls 2.0

Page {
    id: board

    Text {
        id: element
        y: 9
        height: 31
        text: qsTr("Лента проблем")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 14
        anchors.left: parent.left
        anchors.leftMargin: 8
        font.pixelSize: 22
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:618;anchors_x:8}
}
##^##*/
