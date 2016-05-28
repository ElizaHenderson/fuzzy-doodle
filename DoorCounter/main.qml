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
            if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return){
                if(submit2.visible === false){
                   playerarea.visible = true
                }
            }
        }
        submit2.onClicked:{
            if(submit2.visible === false){
               playerarea.visible = true
            }
        }
    }
    BeginScreen{
        id: beginScreen
        button.onClicked: {
            beginScreen.visible = false;
            playerCreateScreen.visible = true;
            playerarea.name = player1.getName();
            console.log(player1.getName());
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
