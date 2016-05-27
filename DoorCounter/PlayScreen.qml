import QtQuick 2.0

Item {
    property alias door: kickDoor
    property alias trouble: lookForTrouble
    property int currentcount: 1
    property int count: 0
    Text{
        color: "green"
        width: topWindow.width/4
        x: (topWindow.width/4)*2
        text:
        {
            if(currentcount < count)
            {
                switch(currentcount)
                {
                case 1:
                    player1.GetName() + "'s Turn"
                    break
                case 2:
                    player2.GetName()+ "'s Turn"
                    break
                case 3:
                    player3.GetName()+ "'s Turn"
                    break
                case 4:
                    player4.GetName()+ "'s Turn"
                    break
                case 5:
                    player5.GetName()+ "'s Turn"
                    break
                case 6:
                    player6.GetName()+ "'s Turn"
                    break
                case 7:
                    player7.GetName()+ "'s Turn"
                    break
                case 8:
                    player8.GetName()+ "'s Turn"
                    break
                default:

                }
            }
        }
    }

    Rectangle{
        id: kickDoor
        visible: true
        height: topWindow.height
        width: topWindow.width/4
        anchors.left: topWindow.left
        Text{
            id: thing
            text: "Kick Door"
            font.pointSize: topWindow.height/10
            color: "green"
            visible:false
            z:5
            anchors.bottom: parent.bottom
            anchors.verticalCenter: topWindow.verticalCenter
        }
        Image{
            id:background
            visible: parent.visible
            source: "../media/closeddoor.png"
            height: topWindow.height
            width: topWindow.width/4
        }
        MouseArea{
            hoverEnabled: true
            id:mouseArea
            anchors.fill: kickDoor
            onEntered: { background.source = "../media/dooropen.png"
                thing.visible = true}
            onExited: { background.source = "../media/closeddoor.png"
                thing.visible = false}
            onClicked:{
                lookForTrouble.visible = true
                levelsGained.visible = true
            }
        }
    }
    Rectangle{
        id: lookForTrouble
        visible: false
        height: topWindow.height
        width: topWindow.width/4
        x: (topWindow.width/4)*4
        color: "#5c2929"
        anchors.leftMargin: 10
        MouseArea{
            hoverEnabled: true
            id:mouseArea2
            anchors.fill: lookForTrouble
            onEntered: { parent.color = "blue" }
            onExited: { parent.color = "#5c2929" }
        }
    }
    Rectangle{
        id: levelsGained
        height: topWindow.height/10
        width: topWindow.width/4
        x: (topWindow.width/2)*2
        visible: false
        color: "#5c2929"
        MouseArea{
            hoverEnabled: true
            id:mouseArea3
            anchors.fill: levelsGained
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
        }
    }
}
