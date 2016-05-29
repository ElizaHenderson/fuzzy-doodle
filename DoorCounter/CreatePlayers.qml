import QtQuick 2.0

Item {
    property int count : 0
    property int currentcount : 0
    property alias submit2: submit2.mouseArea
    property alias playernameQ : playerNameQ.text
    property alias playerCount : playerCount
    height: parent.height/2
    width: parent.width/2
    id: createPlayers

    Text{
        id: playerNameQ
        text: "Enter Player1's Name"
        visible: false
        color: "White"
        font.pointSize: 24
        height: topWindow.height/6
        width: topWindow.width/2
        anchors.verticalCenter: topWindow.verticalCenter
        anchors.horizontalCenter: topWindow.horizontalCenter
    }
    TextInput{
        id:playerCreation
        text:""
        font.pointSize: 24
        visible:{
            if(playerNameQ.visible === true)
                true
            else
                false
        }
        enabled:{ if(visible === true)
                true
            else
                false
        }
        focus: {
            if(visible ===true)
                true
            else
                false
        }
        anchors.top: playerNameQ.bottom
        anchors.verticalCenter: topWindow.verticalCenter
        anchors.horizontalCenter: topWindow.horizontalCenter
        height: topWindow.height/6
        width: topWindow.width/2
        color: "black"
        BeginButton{
            id: submit2
            height: topWindow.height/8
            width: topWindow.width/4
            visible:{
                if( parent.visible == true)
                    true
                else
                    false
            }
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            Text {
                id: text2
                color: "green"
                styleColor: "white"
                font.pixelSize: parent.width/8
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text:{
                    text: "Submit"
                }
            }
            mouseArea.onClicked: {
                if(playerCreation.visible === true){
                    if(currentcount < (count)){
                        if(currentcount === 0){
                            console.log("player1: "+ playerCreation.text);
                            player1.setName(playerCreation.text)
                            player1.setDoor(0)
                            player1.setLevel(1)
                        }
                        else if(currentcount === 1){
                            player2.setName(playerCreation.text)
                            player2.setDoor(0)
                            player2.setLevel(1)
                        }
                        else if(currentcount === 2){
                            player3.setName(playerCreation.text)
                            player3.setDoor(0)
                            player3.setLevel(1)
                        }
                        else if(currentcount === 3){
                            player4.setName(playerCreation.text)
                            player4.setDoor(0)
                            player4.setLevel(1)
                        }
                        else if(currentcount === 4){
                            player5.setName(playerCreation.text)
                            player5.setDoor(0)
                            player5.setLevel(1)
                        }
                        else if(currentcount === 5){
                            player6.setName(playerCreation.text)
                            player6.setDoor(0)
                            player6.setLevel(1)
                        }
                        else if(currentcount === 6){
                            player7.setName(playerCreation.text)
                            player7.setDoor(0)
                            player7.setLevel(1)
                        }
                        else if(currentcount === 7){
                            player8.setName(playerCreation.text)
                            player8.setDoor(0)
                            player8.setLevel(1)
                        }

                    }
                    else{
                        playerCreation.visible = false
                        playerNameQ.visible = false
                        playerCreation.enabled = false
                        playerNameQ.enabled = false
                    }
                    currentcount++
                    if(currentcount !== count)
                        playerNameQ.text = "Enter Player" + (currentcount+1) +"'s Name"
                    else
                    {
                        playerCreation.visible = false
                        playerNameQ.visible = false
                        playerCreation.enabled = false
                        playerNameQ.enabled = false
                    }
                }
            }
        }
        Keys.onPressed: {
            if(playerCreation.visible === true)
            {
                if(currentcount <= count){
                    if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return){
                        if(currentcount < (count)){
                            if(currentcount === 0){
                                console.log("player1: "+ playerCreation.text);
                                player1.setName(playerCreation.text)
                                player1.setDoor(0)
                                player1.setLevel(1)
                            }
                            else if(currentcount === 1){
                                player2.setName(playerCreation.text)
                                player2.setDoor(0)
                                player2.setLevel(1)
                            }
                            else if(currentcount === 2){
                                player3.setName(playerCreation.text)
                                player3.setDoor(0)
                                player3.setLevel(1)
                            }
                            else if(currentcount === 3){
                                player4.setName(playerCreation.text)
                                player4.setDoor(0)
                                player4.setLevel(1)
                            }
                            else if(currentcount === 4){
                                player5.setName(playerCreation.text)
                                player5.setDoor(0)
                                player5.setLevel(1)
                            }
                            else if(currentcount === 5){
                                player6.setName(playerCreation.text)
                                player6.setDoor(0)
                                player6.setLevel(1)
                            }
                            else if(currentcount === 6){
                                player7.setName(playerCreation.text)
                                player7.setDoor(0)
                                player7.setLevel(1)
                            }
                            else if(currentcount === 7){
                                player8.setName(playerCreation.text)
                                player8.setDoor(0)
                                player8.setLevel(1)
                            }

                        }
                        else{
                            playerCreation.visible = false
                            playerNameQ.visible = false
                            playerCreation.enabled = false
                            playerNameQ.enabled = false
                        }
                        currentcount++
                        if(currentcount !== count)
                            playerNameQ.text = "Enter Player" + (currentcount+1) +"'s Name"
                        else
                        {
                            playerCreation.visible = false
                            playerNameQ.visible = false
                            playerCreation.enabled = false
                            playerNameQ.enabled = false
                        }
                    }
                }
            }
        }
    }

    Text{
        id: question
        height: topWindow.height/6
        width: topWindow.width/2
        anchors.verticalCenter: topWindow.verticalCenter
        anchors.horizontalCenter: topWindow.horizontalCenter
        font.pointSize: 24
        color: "White"
        text: "Enter number of players. Between 3 and 8"
    }
    TextInput{
        id: playerCount
        visible:{
            if(question.visible === true)
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
            if(question.visible ===true)
                true
            else
                false
        }
        font.pointSize: 24
        anchors.top: question.bottom
        anchors.verticalCenter: topWindow.verticalCenter
        anchors.horizontalCenter: topWindow.horizontalCenter
        height: topWindow.height/6
        width: topWindow.width/2
        color: "black"
        BeginButton{
            id: submitPlayerCount
            height: topWindow.height/8
            width: topWindow.width/4
            visible:{
                if( parent.visible == true)
                    true
                else
                    false
            }
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            Text {
                id: text
                color: "green"
                styleColor: "white"
                font.pixelSize: parent.width/8
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text:{
                    text: "Submit"
                }
            }
            mouseArea.onClicked: {
                if(visible === true){
                    count = parseInt(playerCount.text)
                    currentcount = 0
                    if(count < 3 || count > 8)
                    {
                        question.text = "Invalid, please enter a number of players between 3 and 8"
                    }
                    else
                    {
                        question.visible = false
                        playerCount.visible = false
                        playerCount.enabled = false
                        playerCreation.visible = true
                        playerCreation.enabled = true
                        playerNameQ.visible = true
                    }
                }
            }
        }
        Keys.onPressed: {
            if(playerCount.visible === true){

                if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return)
                {
                    count = parseInt(playerCount.text)
                    currentcount = 0
                    if(count < 3 || count > 8)
                    {
                        question.text = "Invalid, please enter a number of players between 3 and 8"
                    }
                    else
                    {
                        question.visible = false
                        playerCount.visible = false
                        playerCount.enabled = false
                        playerCreation.visible = true
                        playerCreation.enabled = true
                        playerNameQ.visible = true
                    }
                }
            }
        }
    }
}
