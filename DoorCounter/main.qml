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
    BeginButton {
        id: beginButton
        Text {
            id: text
            color: "#8d8c34"
            styleColor: "#bbb234"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text:{
                if(saveFile1.clicked || saveFile2.clicked)
                {
                    text: "Continue Adventure"
                }
                else
                    text: "Begin Adventure"
            }
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    BeginButton{
        id: beginButton2
        Text {
            id: text2
            color: "#8d8c34"
            styleColor: "#bbb234"
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Begin New Adventure"
        }
        visible: {
            if (saveFile1.clicked == false && saveFile2.clicked == false)
            {
                false
            }
            else
            {
                true
            }
        }
        anchors.top: beginButton.bottom
        anchors.left: beginButton.left
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
        property bool clicked:false
        color:"blue"
        mouseArea.onClicked:{
            topWindow.color = saveFile1.color
            clicked = true
            welcomeBack.text1 = "Welcome Back Cade"
        }
        Drag.onActiveChanged: {
            topWindow.itemBeingDragged = saveFile1
        }
    }
    SaveFile{
        id: saveFile2
        Drag.active: mouseArea.drag.active
        maximumDragX: parent.width
        maximumDragY: parent.height
        x:100
        y:0
        Drag.hotSpot.x: 32
        Drag.hotSpot.y: 32
        property bool clicked:false
        color:"purple"
        mouseArea.onClicked:{
            topWindow.color = saveFile2.color
            clicked = true
            welcomeBack.text1 = "Welcome Back Eliza"
        }
        Drag.onActiveChanged: {
            topWindow.itemBeingDragged = saveFile1
        }
    }
    Rectangle{
        id: welcomeBack
        Text{
            id: text1
            font.pointSize: 24
            color: "yellow"
            text: "null"
            anchors.horizontalCenter:parent.horizontalCenter
        }
        color: parent.color
        anchors.horizontalCenter: parent.horizontalCenter
        height: topWindow.height/5
        width: topWindow.width/3
        visible: {
            if (saveFile1.clicked == false && saveFile2.clicked == false)
            {
                false
            }
            else
            {
                true
            }
        }
    }
}
