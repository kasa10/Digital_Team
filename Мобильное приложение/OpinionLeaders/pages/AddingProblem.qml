import QtQuick 2.6
import QtQuick.Controls 2.0

Page {
    id: page
    Text {
        id: element
        y: 10
        height: 37
        text: qsTr("Обратить внимание")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 11
        font.pixelSize: 27
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:614;anchors_x:11}
}
##^##*/
