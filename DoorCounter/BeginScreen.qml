import QtQuick 2.0
import QtMultimedia 5.6
Item
{

    enabled:true
    visible:true
    anchors.top:parent.top
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    property alias button: beginButton2.mouseArea
    property alias howToPlay: howToPlay.mouseArea
    //property alias video: howToPlayVid

    BeginButton {
        id: beginButton2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: text
            color: "green"
            styleColor: "white"
            font.pixelSize: parent.width/8
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text:{
                text: "Begin Adventure"
            }
        }
    }
    BeginButton {
        id: howToPlay
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: beginButton2.bottom
        Text {
            id: moretext
            color: "green"
            styleColor: "white"
            font.pixelSize: parent.width/8
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text:{
                text: "How To Play"
            }
        }

    }

    Image{
        id: logo
        source: "/../media/l2p-munchkin2.jpg"
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        width:topWindow.width/2
        height: topWindow.height/7
        fillMode: Image.PreserveAspectFit
    }
    Rectangle{
        height: 40
        width: parent.width
        id: programName
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"

        Text{
            id: name
            font.pointSize: 24
            color: "black"
            text: "Munchkins Door Counter"
            anchors.verticalCenter:parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
