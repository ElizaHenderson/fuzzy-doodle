import QtQuick 2.6
import QtQuick.Window 2.2


Window {
    id:topWindow
    visible: true
    property Item itemBeingDragged:null
    width: 1000
    height: 800
    title: qsTr("Door Counter")
    color: "brown"
    DropArea{
        id:dropArea
        width:parent.width/4
        height:width
        Drag.dragType: Drag.Automatic
    }
    CreatePlayers{
        id:playerCreateScreen
        visible:false
        Keys.onPressed: {
            if(visible === true)
            {
                if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return){
                if(currentcount !== playerCount){
                    switch(currentcount){
                    case 1:
                        player1.setName(playerCreation.text)
                        player1.setorder(currentcount)
                        currentcount += 1
                        break
                    case 2:
                        player2.setName(playerCreation.text)
                        player2.setorder(currentcount)
                        currentcount += 1
                        break
                    case 3:
                        player3.setName(playerCreation.text)
                        player3.setorder(currentcount)
                        currentcount += 1
                        break
                    case 4:
                        player4.setName(playerCreation.text)
                        player4.setorder(currentcount)
                        currentcount += 1
                        break
                    case 5:
                        player5.setName(playerCreation.text)
                        player5.setorder(currentcount)
                        currentcount += 1
                        break
                    case 6:
                        player6.setName(playerCreation.text)
                        player6.setorder(currentcount)
                        currentcount += 1
                        break
                    case 7:
                        player7.setName(playerCreation.text)
                        player7.setorder(currentcount)
                        currentcount += 1
                        break
                    case 8:
                        player8.setName(playerCreation.text)
                        player8.setorder(currentcount)
                        currentcount += 1
                        break
                    default:

                    }
                }
                else{
                    playerCreation.visible = false
                    currentcount = 0
                }
            }
            }
        }
    }
    BeginScreen
    {
        id: beginScreen
        button.onPressed: {
            beginScreen.visible = false
            playerCreateScreen.visible = true
        }
    }

}
