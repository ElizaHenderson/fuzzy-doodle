import QtQuick 2.6
import QtQuick.Window 2.2
import QtMultimedia 5.6
import Qt.labs.settings 1.0

Window {
    id:topWindow
    visible: true
    width: 1000
    height: 800
    title: qsTr("Door Counter")
    color: "#ffd09a"

    Settings{
        id: settings_global
        property alias colorV: topWindow.color
        property alias mutedV: howtoplay.muted
    }
    Rectangle{
        id: settingmenu
        height: topWindow.height/10
        width: topWindow.width/10
        anchors.top:topWindow.top
        anchors.right: parent.right
        color: "transparent"
        z:10
        Image{
            source: "../media/Gear_icon.svg.png"
            anchors.fill: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                menu.visible = !menu.visible
                //beginScreen.enabled = !beginScreen.enabled
            }
        }
    }
    Rectangle{
        id: menu
        z: 5
        visible: false
        height: topWindow.height/2
        width: topWindow.width/2
        border.color: "black"
        border.width: 5
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: topWindow.color
        Text{
            id:vidmute
            text: "Video Muted"
            anchors.left: menu.left
            anchors.bottom: menu.verticalCenter
            font.pointSize: 24
            color: "black"
            visible: parent.visible
        }
        Text{
            id: idbg
            text: "Background Color"
            font.pointSize: 24
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: "black"
            visible: parent.visible
            anchors.bottomMargin: 20
        }
        Rectangle{
            visible: parent.visible
            height: 50
            width: 50
            anchors.left: vidmute.right
            anchors.bottom: vidmute.bottom
            anchors.leftMargin: 10
            id: muted
            color:{
                if(settings_global.mutedV === true)
                    "red"
                else
                    "green"
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    if( settings_global.mutedV === true)
                    {
                        muted.color = "green"
                        howtoplay.video.muted = false
                    }
                    else
                    {
                        muted.color = "red"
                        howtoplay.video.muted = true
                    }
                }

            }
        }
        Rectangle{
            visible: parent.visible
            id: thiscolor
            anchors.leftMargin: 10
            height: 50
            width: 200
            color:"transparent"
            anchors.left: idbg.right
            anchors.bottom: idbg.bottom
            anchors.bottomMargin: 10
            Rectangle{
                height: 50
                width: 66
                anchors.left: thiscolor.left
                anchors.top: thiscolor.top
                id: black
                color: "grey"
                border.color: "black"
                z:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: topWindow.color = black.color
                }
            }
            Rectangle{
                height: 50
                width: 66
                anchors.left: black.right
                border.color: "black"
                anchors.top: color.top
                anchors.leftMargin: 10
                id: beige
                color: "#ffd09a"
                z:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: topWindow.color = beige.color
                }
            }
            Rectangle{
                height: 50
                width: 66
                anchors.left: beige.right
                anchors.top: thiscolor.top
                anchors.leftMargin: 10
                border.color: "black"
                id: blue
                color:"blue"
                z:10
                MouseArea{
                    anchors.fill: parent
                    onClicked: topWindow.color = blue.color
                }
            }
        }
    }
    CreatePlayers{
        id:playerCreateScreen
        visible:false
        Keys.onPressed:{
            if(submit2.visible === false && playerCount.visible === false){
                if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return){
                    playerarea.visible = true
                    playerarea.name = "It's "+player1.getName() + "'s Turn. Current Level: "
                            + player1.GetLevel() + " on door: " + player1.GetDoor()
                }
            }
        }
        submit2.onClicked:{
            if(submit2.visible === false && playerCount.visible === false){
                playerarea.visible = true
                playerarea.name =  "It's "+player1.getName() + "'s Turn. Current Level: "
                        + player1.GetLevel() + " on door: " + player1.GetDoor()
            }
        }
    }
    BeginScreen{
        id: beginScreen
        button.onClicked: {
            beginScreen.visible = false;
            playerCreateScreen.visible = true;
        }
        howToPlay.onClicked: {
            howtoplay.visible = true
            howtoplay.video.visible = true
            howtoplay.video.play()
            howtoplay.back.visible = true
        }

    }
    VideoContainer{
        id: howtoplay
    }
    PlayScreen{
        id: playerarea
        visible: false
        count: playerCreateScreen.count
        name: ""
    }
}
