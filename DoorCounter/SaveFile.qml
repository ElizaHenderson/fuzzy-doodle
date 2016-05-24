import QtQuick 2.0

Rectangle {
    property alias mouseArea:mouseArea
    property alias drag:mouseArea.drag
    height: 100
    width: 100
    border.color: "black"
    border.width: 3
    property Text name: null

    Text {
        id: name
        text: qsTr("Save File")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea{
        id:mouseArea
        anchors.fill: parent
        drag.target: parent
        drag.maximumX: maximumDragX
        drag.maximumY: maximumDragY
    }
}
