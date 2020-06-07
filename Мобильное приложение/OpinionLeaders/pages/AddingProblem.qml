import QtQuick 2.6
import QtQuick.Controls 2.12
import QtMultimedia 5.12

Page {
    id: pageAddingProblem

    StackView {
        anchors.fill: parent
        id: addingProblemStackController        
        initialItem: ProblemForm {}
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
}
##^##*/
