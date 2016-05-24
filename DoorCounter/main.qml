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
/*    CreatePlayers{
        id:playerCreateScreen
        visible:false
        Keys.onPressed:{
            if(currentcount === count)
            {
               visible: false
               enabled: false
            }
        }
    }*/
/*    BeginScreen
    {
        id: beginScreen
        button.onClicked: {
            beginScreen.visible = false
            playerCreateScreen.visible = true
        }
        /*howToPlay.onClicked: {
            howToPlay.visible = true
            howToPlayVid.visible = true
            howToPlayVid.play()
            //howToPlayVid.focus = true
        }*/

    //}

        Video
        {
            id: video
            source: "../media/howtoplay.mp4"
            height: parent.height
            width: parent.width
            anchors.horizontalCenter: topWindow.horizontalCenter
            anchors.verticalCenter: topWindow.verticalCenter
            autoPlay: true
            fillMode: VideoOutput.Stretch
            //seekable: true
            focus: true
            volume: 1
            Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
            Keys.onLeftPressed: video.seek(video.position - 5000)
            Keys.onRightPressed: video.seek(video.position + 5000)
        }

}
