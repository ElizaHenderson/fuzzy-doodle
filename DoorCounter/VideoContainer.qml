import QtQuick 2.0
import QtMultimedia 5.6
Item {
    property alias video: video
    property alias back: back
    property alias muted: video.muted

    id: vidcontain
    Video {
        id: video
        source: "../media/howtoplay2.avi"
        height: topWindow.height
        width: topWindow.width
        anchors.horizontalCenter: topWindow.horizontalCenter
        anchors.verticalCenter: topWindow.verticalCenter
        autoPlay: false
        fillMode: VideoOutput.Stretch
        visible: false
    }
    Rectangle{
        id: back
        visible: {
            if(video.visible === true)
                true
            else
                false
        }
        height: topWindow.height/8
        width: topWindow.width/6
        anchors.bottom: video.bottom
        anchors.right: video.right
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
                vidcontain.visible = false
                video.visible = false
                video.stop()
                back.visible = false
            }
        }
    }
}
