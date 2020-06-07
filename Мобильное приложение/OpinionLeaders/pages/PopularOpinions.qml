import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Page {
    id: page
    Text {
        id: element
        height: 122
        text: qsTr("В бета-версии машинное обучение пока недоступно")
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 39
        anchors.right: parent.right
        anchors.rightMargin: 56
        anchors.left: parent.left
        anchors.leftMargin: 39
        font.pixelSize: 32
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:545;anchors_x:39;anchors_y:39}
}
##^##*/
