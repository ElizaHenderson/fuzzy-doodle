import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id:topWindow
    visible: true
    property Item itemBeingDragged:null
    width: 640
    height: 480
    title: qsTr("Door Counter")
    color: "brown"
    DropArea{
        id:dropArea
        width:parent.width/4
        height:width
        Drag.dragType: Drag.Automatic
    }

    Rectangle {
        id: beginButton
        Text {
            color: "#8d8c34"
            text: "Begin Adventure"
            styleColor: "#bbb234"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 16
        }
        height: parent.height/6
        color: "#5c2929"
        width: parent.width/4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        MouseArea{
            hoverEnabled: true
            id:mouseArea2
            anchors.fill: parent
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
        }
    }

    SaveFile{
        id: saveFile1

        Drag.active: mouseArea.drag.active
        maximumDragX: parent.width
        maximumDragY: parent.height
        x:0
        y:0
        Drag.hotSpot.x: 32
        Drag.hotSpot.y: 32
        anchors.left:parent.left
        color:"blue"
        mouseArea.onClicked:{
            topWindow.color = saveFile1.color
        }
        Drag.onActiveChanged: {
            topWindow.itemBeingDragged = saveFile1
        }
    }
}
