import QtQuick 2.6
import QtQuick.Window 2.2
import QtMultimedia 5.6

Window {
    id:topWindow
    visible: true
    width: 1000
    height: 800
    title: qsTr("Door Counter")
    color: "#FFD09A"
    CreatePlayers{
        id:playerCreateScreen
        visible:false
        Keys.onPressed:{
            if(currentcount === count)
            {
               visible: false
               enabled: false
            }
        }
    }
    BeginScreen{
        id: beginScreen
        button.onClicked: {
            beginScreen.visible = false
            playerCreateScreen.visible = true
        }
        howToPlay.onClicked: {
            howToPlay.visible = true
            video.visible = true
            dumbrect.visible = true
            video.play()
        }

    }
    Rectangle{
        id: dumbrect
        visible: false
        height: topWindow.height
        width: topWindow.width
        anchors.horizontalCenter: beginScreen.horizontalCenter
        anchors.verticalCenter: beginScreen.verticalCenter
        Video{
            id: video
            source: "../media/howtoplay2.avi"
            height: topWindow.height
            width: topWindow.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            autoPlay: false
            fillMode: VideoOutput.Stretch
            visible: false
        }
        Rectangle{
            id: back
            visible: {
                if(dumbrect.visible)
                    true
                else
                    false
            }
            height: dumbrect.height/8
            width:dumbrect.width/6
            anchors.bottom: dumbrect.bottom
            anchors.right: dumbrect.right
            z:1
            Text {
                id: text
                color: "green"
                styleColor: "white"
                font.pixelSize: parent.width/8
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text:{
                    text: "Back"
                }
            }
            MouseArea{
                hoverEnabled: true
                id:mouseArea
                anchors.fill: parent
                onEntered: { parent.color = "green" }
                onExited: { parent.color = "#5c2929" }
                onClicked: {
                    video.stop()
                    dumbrect.visible = false
                }
            }

        }
    }
}
