import QtQuick 2.0

Item {
    property int count
    property int currentcount
    height: parent.height/2
    width: parent.width/2
    id: createPlayers
    Text{
        id: playerNameQ
        text: "Enter Player"+currentcount+"'s name"
        visible: false
        color: "White"
        font.pointSize: 24
        height: topWindow.height/3
        width: topWindow.width/2
        anchors.top: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
    TextInput{
        id:playerCreation
        text:"..."
        font.pointSize: 24
        anchors.top: playerNameQ.bottom
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
        anchors.horizontalCenter: playerNameQ.horizontalCenter
        anchors.verticalCenter: playerNameQ.verticalCenter
        height: topWindow.height/8
        width: topWindow.width/2
        color: "orange"

    }
    Text{
        id: question
        height: topWindow.height/3
        width: topWindow.width/2
        anchors.top: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        //horizontalAlignment: Text.AlignHCenter
        font.pointSize: 24
        color: "White"
        text: "Enter number of players. Between 3 and 8"
        verticalAlignment: Text.AlignVCenter
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
        text: "..."
        font.pointSize: 24
        anchors.top: question.bottom
        anchors.horizontalCenter: question.horizontalCenter
        anchors.verticalCenter: question.verticalCenter
        height: topWindow.height/8
        width: topWindow.width/2
        color: "orange"
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
