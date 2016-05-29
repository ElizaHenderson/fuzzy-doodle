import QtQuick 2.0

Item {
    property alias door: kickDoor
    property alias name: user_name_txt.text
    property int currentcount: 0
    property int levelsgained: 0
    property int count: 0

    Text{
        id: user_name_txt
        font.pointSize: topWindow.height/20
        color: "green"
        width: topWindow.width/6
        x: (topWindow.width/4)*1
        visible:true
        text:"test"
        wrapMode: "WordWrap"
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
                kickDoor.visible = false
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
        Text{
            width:parent.width
            height: parent.height
            id: things
            text: "Look For Trouble"
            wrapMode: "WordWrap"
            font.pointSize: topWindow.height/15
            color: "green"
            visible:false
            z:5
            anchors.bottom: parent.bottom
            anchors.verticalCenter: topWindow.verticalCenter
        }
        MouseArea{
            hoverEnabled: true
            id:mouseArea2
            anchors.fill: lookForTrouble
            onEntered: { parent.color = "blue"
                        things.visible = true}
            onExited: { parent.color = "#5c2929"
                        things.visible = false}
            onClicked:{
                levelsGained.visible = true
                levelText.visible = true
            }
        }
    }
    Rectangle{
        id: winscreen
        visible: false
        height: topWindow.height
        width: topWindow.width
        z:100
        Text{
            id: text
            text: "nope"
            font.pointSize: 25
            color: "black"
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
                levelsgained = parseInt(levelText.text)
                levelText.text = ""
                if(currentcount !== count){
                    switch(currentcount){
                    case 0:{
                        if(player1.GetLevel()+levelsgained < 10){
                            player1.LevelUp(levelsgained)
                            player1.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player1.getName() + " Wins!"
                            winscreen.visible = true
                        }
                        break
                    }
                    case 1:{
                        if(player2.GetLevel() + levelsgained < 10){
                            player2.LevelUp(levelsgained)
                            player2.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player2.getName() + " Wins!"
                            winscreen.visible = false
                        }

                        break
                    }
                    case 2:{
                        if(player3.GetLevel() + levelsgained < 10){
                            player3.LevelUp(levelsgained)
                            player3.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player3.getName() + " Wins!"
                            winscreen.visible = false
                        }
                        break
                    }
                    case 3:{
                        if(player4.GetLevel() + levelsgained < 10){
                            player4.LevelUp(levelsgained)
                            player4.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player4.getName() + " Wins!"
                            winscreen.visible = true
                        }

                        break
                    }
                    case 4:{
                        if(player5.GetLevel() + levelsgained < 10){
                            player5.LevelUp(levelsgained)
                            player5.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player5.getName() + " Wins!"
                            winscreen.visible = false
                        }
                        break
                    }
                    case 5:{
                        if(player3.GetLevel() + levelsgained < 10){
                            player6.LevelUp(levelsgained)
                            player6.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player6.getName() + " Wins!"
                            winscreen.visible = false
                        }
                        break
                    }
                    case 6:{
                        if(player3.GetLevel() + levelsgained < 10){
                            player7.LevelUp(levelsgained)
                            player7.KickDoor()
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player7.getName() + " Wins!"
                            winscreen.visible = false
                        }
                        break
                    }
                    case 7:{
                        if(player3.GetLevel() + levelsgained < 10){
                            player8.KickDoor()
                            player8.LevelUp(levelsgained)
                            levelsGained.visible = false
                            lookForTrouble.visible = true
                            endTurn.visible = true

                        }
                        else{
                            text.text = player8.getName() + " Wins!"
                            winscreen.visible = false
                        }
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
            if(lookForTrouble.visible == true)
                true
            else
                false
        }
        Text{
            font.pointSize: 20
            text: "End Turn"
        }
        MouseArea{
            hoverEnabled: true
            id:mouseArea4
            anchors.fill: parent
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
            onClicked:{
                if(currentcount !== count)
                    currentcount++
                else
                    currentcount = 0

                if(currentcount !== count)
                {
                    if(currentcount === 0)
                        user_name_txt.text = "It's "+player1.getName() + "'s Turn. Current Level: "
                                + player1.GetLevel() + " on door: " + player1.GetDoor()
                    else if(currentcount === 1)
                        user_name_txt.text = "It's "+player2.getName() + "'s Turn. Current Level: "
                                + player2.GetLevel() + " on door: " + player2.GetDoor()
                    else if(currentcount === 2)
                        user_name_txt.text = "It's "+player3.getName() + "'s Turn. Current Level: "
                                + player3.GetLevel() + " on door: " + player3.GetDoor()
                    else if(currentcount === 3)
                        user_name_txt.text = "It's "+player4.getName() + "'s Turn. Current Level: "
                                + player4.GetLevel() + " on door: " + player4.GetDoor()
                    else if(currentcount === 4)
                        user_name_txt.text = "It's "+player5.getName() + "'s Turn. Current Level: "
                                + player5.GetLevel() + " on door: " + player5.GetDoor()
                    else if(currentcount === 5)
                        user_name_txt.text = "It's "+player6.getName() + "'s Turn. Current Level: "
                                + player6.GetLevel() + " on door: " + player6.GetDoor()
                    else if(currentcount === 6)
                        user_name_txt.text = "It's "+player7.getName() + "'s Turn. Current Level: "
                                + player7.GetLevel() + " on door: " + player7.GetDoor()
                    else if(currentcount === 7)
                        user_name_txt.text = "It's "+player8.getName() + "'s Turn. Current Level: "
                                + player8.GetLevel() + " on door: " + player8.GetDoor()

                    levelText.visible = false
                    levelsGained.visible = false
                    endTurn.visible = false
                    lookForTrouble.visible = false
                    kickDoor.visible = true
                }
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
        text: ""
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
