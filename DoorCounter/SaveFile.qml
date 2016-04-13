import QtQuick 2.0

Rectangle {
    property alias mouseArea:mouseArea
    property real  maximumDragX:100
    property real  maximumDragY:100
    property alias drag:mouseArea.drag
    height: 100
    width: 100
    anchors.bottom: parent.bottom
    Text {
        id: name
        text: qsTr("Save File")
    }
    MouseArea{
        id:mouseArea
        anchors.fill: parent
        drag.target: parent
        drag.maximumX: maximumDragX
        drag.maximumY: maximumDragY
    }
}
