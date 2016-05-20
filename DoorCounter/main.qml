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
            font.pixelSize: parent.width/10
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
        mouseArea.onClicked:
        {
            dialog.visible = true
        }
    }
    BeginButton{
        id: beginButton2
        Text {
            id: text2
            color: "#8d8c34"
            styleColor: "#bbb234"
            font.pixelSize: parent.width/10
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
        mouseArea.onClicked:
        {
            dialog.visible = true
        }
    }
    Rectangle{
        id: dialog
        width: beginButton.width*2
        height: beginButton.height*2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "red"
        visible: false
        radius: 10
        z: 5
        Text{
            text: "You clicked the button"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: parent.height/6
        }
        Rectangle{
            id: confirm
            width: parent.width/4
            height: parent.height/4
            color: "white"
            radius: 10
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.left
            Text{
                text: "Confirm"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: parent.height/3
            }
            MouseArea{
                hoverEnabled: true
                id:mouseArea
                anchors.fill: parent
                onEntered: { parent.color = "green" }
                onExited: { parent.color = "white" }
                onClicked: {dialog.visible = false }
            }
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
        property bool clicked:false
        color:"blue"
        mouseArea.onClicked:{
            topWindow.color = saveFile1.color
            clicked = true
            welcomeBack.text = "Welcome Back " + sFile[1].GetName()
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
        x:0
        y:98
        Drag.hotSpot.x: 32
        Drag.hotSpot.y: 32
        property bool clicked:false
        color:"purple"
        mouseArea.onClicked:{
            topWindow.color = saveFile2.color
            clicked = true
            welcomeBack.text = "Welcome Back " + sFile[2].GetName()
        }
        Drag.onActiveChanged: {
            topWindow.itemBeingDragged = saveFile2
        }
    }
    Rectangle{
        id: welcomeBack
        property alias text: text1.text
        Text{
            id: text1
            font.pointSize: 24
            color: "yellow"
            text: "null"
            anchors.horizontalCenter:parent.horizontalCenter
        }
        color: "transparent"
        anchors.horizontalCenter: parent.horizontalCenter
        height: 24
        width: 10
        visible: {
            if (saveFile1.clicked == false && saveFile2.clicked == false)
                false
            else
                true
        }
    }
    Rectangle{
        id: programName
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        height: 30
        width: parent.width
        Text{
            id: name
            font.pointSize: 24
            color: "yellow"
            text: "Munchkins Door Counter"
            anchors.verticalCenter:parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
