import QtQuick 2.6
import QtQuick.Controls 2.12
import QtMultimedia 5.12

Page {
    id: cameraInputController
    property var cameras: QtMultimedia.availableCameras
    property int currentCamera: 0

    Text {
        id: nn
        x: 10
        y: 14
        text: qsTr("Фиксирование ситуации")
        font.pointSize: 15
    }

    VideoOutput {
        id: rectangle
        anchors.fill: parent
        source: Camera {
            id: camera
            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash
            exposure {
                exposureCompensation: -5.0
                exposureMode: Camera.ExposurePortrait
            }
            flash.mode: Camera.FlashRedEyeReduction

            imageCapture {
                onImageCaptured: {
                    photoPreview.source = preview  // Show the preview in an Image
                    rectangle.visible = false;
                }
            }

        }

        autoOrientation: true
    }

    Button {
        id: button
        x: 476
        y: 431
        width: 131
        height: 28
        text: qsTr("ФОТО!")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 21
        anchors.right: parent.right
        anchors.rightMargin: 33
        onClicked: {
            camera.imageCapture.capture();
        }
    }

    Button {
        id: button1
        y: 433
        width: 133
        height: 26
        text: qsTr("Закрыть")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 21
        anchors.left: parent.left
        anchors.leftMargin: 19
        onClicked: {
            addingProblemStackController.pop();
        }
    }

    Image {
        x: rectangle.x
        y: rectangle.y
        width: cameraInputController.width
        height: 300
        id: photoPreview


    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
