import QtQuick 2.0

Item {
    Rectangle{
        id: kickDoor
        MouseArea{
            hoverEnabled: true
            id:mouseArea
            anchors.fill: parent
            onEntered: { parent.background = "../media/opendoor.png" }
            onExited: { parent.background = "../media/closeddoor.png" }
            onClicked:{
                lookForTrouble.visible = true
                levelsGained.visible = true
            }
        }
    }
    Rectangle{
        id: lookForTrouble
        visible: false
        MouseArea{
            hoverEnabled: true
            id:mouseArea2
            anchors.fill: parent
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
        }
    }
    Rectangle{
        id: levelsGained
        visible: false
        MouseArea{
            hoverEnabled: true
            id:mouseArea3
            anchors.fill: parent
            onEntered: { parent.color = "green" }
            onExited: { parent.color = "#5c2929" }
        }
    }
}
