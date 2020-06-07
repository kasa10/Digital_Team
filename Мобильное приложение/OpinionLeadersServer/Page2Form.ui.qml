import QtQuick 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3

Page {
    id: page11

    title: qsTr("Рейтинги по муниципальным субъектам")

    Rectangle {
        id: rectangle
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: page11.height/2-20

        color: "#ffffff"
        ChartView {
            id: chart
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.fill: parent
            title: "Количество размещений на 07 марта 2020 года"
            legend.alignment: Qt.AlignBottom
            antialiasing: true

            BarSeries {
                    id: mySeries
                    axisX: BarCategoryAxis { categories: ["2020" ] }
                    BarSet { label: "Горно-Алтайск"; values: [2] }
                    BarSet { label: "Кош-Агаш аймак"; values: [3] }
                    BarSet { label: "Майма аймак"; values: [3] }
                    BarSet { label: "	Оҥдой аймак"; values: [2] }
                    BarSet { label: "Турачак аймак"; values: [0] }
                    BarSet { label: "Улаган аймак"; values: [0] }
                    BarSet { label: "Кан-Оозы аймак"; values: [5] }
                    BarSet { label: "Кöк-Суу Оозы аймак"; values: [3] }
                    BarSet { label: "Шебалин аймак"; values: [0] }
                    BarSet { label: "Чамал аймак"; values: [3] }
                    BarSet { label: "Чой аймак"; values: [9] }

                }
        }
    }

    Rectangle {
        id: rectangle2
        anchors.top: rectangle.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "#ffffff"
        ChartView {
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            title: "Количество загрузок приложений"
            anchors.fill: parent
            antialiasing: true

            LineSeries {
                name: "Google Play"
                XYPoint { x: 0; y: 0 }
                XYPoint { x: 1.1; y: 2.1 }
                XYPoint { x: 1.9; y: 3.3 }
                XYPoint { x: 2.1; y: 2.1 }
                XYPoint { x: 2.9; y: 4.9 }
                XYPoint { x: 3.4; y: 3.0 }
                XYPoint { x: 4.1; y: 3.3 }
            }
            LineSeries {
                name: "Яндекс.Маркет"
                XYPoint { x: 0; y: 0 }
                XYPoint { x: 1.1; y: 3.1 }
                XYPoint { x: 2.2; y: 1.3 }
                XYPoint { x: 2.7; y: 2.7 }
                XYPoint { x: 2.9; y: 5.9 }
                XYPoint { x: 3.4; y: 4.0 }
                XYPoint { x: 4.1; y: 2.3 }
            }
        }
    }
}
