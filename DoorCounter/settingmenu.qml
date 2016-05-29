import QtQuick 2.0

Item {
    Rectangle{
        id: settingmenu
        height: topWindow.height/10
        width: topWindow.width/10
        anchors.top:topWindow.top
        anchors.right: topWindow.right
        radius: 100
        Image{
            source: "../media/Gear_icon.svg.png"
            height: parent.height
            width: parent.right
        }
        MouseArea{

        }
    }
    Rectangle{
        id: menu
        Text{
            text: "Video Muted"
            anchors.right: muted.right
        }
        Text{
            text: "Background Color"
            anchors.right: color.right
        }

        Rectangle{
            id: muted
            color: "white"
            MouseArea{
                onClicked: muted.color = "black"
            }
        }
        Rectangle{
            id: color
        }
    }
}
