import QtQuick 2.0

Item {
    property alias door: kickDoor
    //property alias trouble: lookForTrouble
    property int currentcount: 1
    property int count: 0
    property string name: user_name_txt.text
    Text{
        id: user_name_txt
        font.pointSize: topWindow.height/20
        color: "green"
        width: topWindow.width/4
        x: (topWindow.width/4)*2
        text: ""
            /*if(currentcount < count){
                switch(currentcount){
                case 1:
                    "It's "+ player1.getName() + "'s Turn"
                    break
                case 2:
                    "It's "+player2.getName()+ "'s Turn"
                    break
                case 3:
                    "It's "+player3.getName()+ "'s Turn"
                    break
                case 4:
                    "It's "+player4.getName()+ "'s Turn"
                    break
                case 5:
                    "It's "+player5.getName()+ "'s Turn"
                    break
                case 6:
                    "It's "+player6.getName()+ "'s Turn"
                    break
                case 7:
                    "It's "+player7.getName()+ "'s Turn"
                    break
                case 8:
                    "It's "+player8.getName()+ "'s Turn"
                    break
                }
            }*/
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
                //lookForTrouble.visible = true
                levelsGained.visible = true
                levelText.visible = true
            }
        }
    }
    Rectangle{
        id: lookForTrouble
        visible: false
        height: topWindow.height
        width: topWindow.width/4
        x: (topWindow.width/4)*3
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
        x: (topWindow.width/4)*2
        y: (topWindow.height/4)*2
        visible: false
        color: "#5c2929"
        Text{
            text: "Level Up!"
            font.pointSize: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        MouseArea{
            hoverEnabled: true
            id:mouseArea3
            anchors.fill: levelsGained
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
            onClicked:{
                if(currentcount < count){
                    switch(currentcount){
                    case 1:{
                        player1.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 2:{
                        player2.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 3:{
                        player3.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 4:{
                        player4.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 5:{
                        player5.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 6:{
                        player6.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 7:{
                        player7.LevelUp(parseInt(levelText.text))
                        break
                    }
                    case 8:{
                        player8.LevelUp(parseInt(levelText.text))
                        break
                    }
                    }
                }
            }
        }
    }
    Rectangle{
        id:endTurn
        height: topWindow.height/10
        width: topWindow.width/10
        x: (topWindow.width/10)*5
        y: (topWindow.height/10)*6
        visible:{
            if(levelText.visible == true)
                true
            else
                false
        }
        Text{
            font.pointSize: 24
            text: "End Turn"
        }
        MouseArea{
            hoverEnabled: true
            id:mouseArea4
            anchors.fill: parent.fill
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
            onClicked:{
               currentCount+=1
               levelText.visible = false
               levelsGained.visible = false
               parent.visible = false
               lookForTrouble.visible = false
            }
        }
    }
    TextInput{
        id: levelText
        visible:{
            if(levelsGained.visible === true)
                true
            else
                false
        }
        enabled:{ if(visible === true)
                     true
                 else
                     false
        }
        text: "Levels Gained"
        focus: {
            if(levelsGained.visible ===true)
                true
            else
                false
        }
        font.pointSize: 24
        anchors.bottom: levelsGained.top
        anchors.right: levelsGained.right
        height: topWindow.height/10
        width: topWindow.width/10
        color: "black"
 }
}
