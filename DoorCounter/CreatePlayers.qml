import QtQuick 2.0

Item {
    property int count
    property int currentcount
    property alias submit2: submit2.mouseArea
    height: parent.height/2
    width: parent.width/2
    id: createPlayers

    Text{
        id: playerNameQ
        text: "Enter Player"+ currentcount +"'s name"
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
                if(visible === true){
                    if(currentcount <= count){
                        console.log("count" + count);
                        console.log("currentcount" + currentcount);
                        if(currentcount === 1){
                            console.log("player1: "+ playerCreation.text);
                            player1.setName(playerCreation.text)
                        }
                        else if(currentcount === 2){
                            player2.setName(playerCreation.text)
                        }
                        else if(currentcount === 3){
                            player3.setName(playerCreation.text)
                        }
                        else if(currentcount === 4){
                            player4.setName(playerCreation.text)
                        }
                        else if(currentcount === 5){
                            player5.setName(playerCreation.text)
                        }
                        else if(currentcount === 6){
                            player6.setName(playerCreation.text)
                        }
                        else if(currentcount === 7){
                            player7.setName(playerCreation.text)
                       }
                        else if(currentcount === 8){
                            player8.setName(playerCreation.text)
                        }
                        currentcount++
                    }
                    else{
                        playerCreation.visible = false
                        playerNameQ.visible = false
                        playerCreation.enabled = false
                        playerNameQ.enabled = false
                        //currentcount = 1
                    }
                }
            }
        }
        Keys.onPressed: {
            if(visible === true)
            {
                if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return){
                    if(visible === true){
                        if(currentcount <= count){
                            console.log("count" + count);
                            console.log("currentcount" + currentcount);
                            if(currentcount === 1){
                                console.log("player1: "+ playerCreation.text);
                                player1.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 2){
                                player2.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 3){
                                player3.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 4){
                                player4.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 5){
                                player5.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 6){
                                player6.setName(playerCreation.text)
                                currentcount += 1
                            }
                            else if(currentcount === 7){
                                player7.setName(playerCreation.text)
                                currentcount += 1
                           }
                            else if(currentcount === 8){
                                player8.setName(playerCreation.text)
                                currentcount += 1
                            }
                        }
                        else{
                            playerCreation.visible = false
                            playerNameQ.visible = false
                            playerCreation.enabled = false
                            playerNameQ.enabled = false
                            //currentcount = 1
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
            id: submit1
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
                    currentcount = 1
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
            if(visible === true){

                if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return)
                {
                    count = parseInt(playerCount.text)
                    currentcount = 1
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
