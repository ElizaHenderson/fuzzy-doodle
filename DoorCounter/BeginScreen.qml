import QtQuick 2.0

Item
{
    enabled:true
    visible:true
    anchors.top:parent.top
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    property alias button: beginButton2.mouseArea
    BeginButton {
    id: beginButton2
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
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle{
        id: programName
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        height: 30
        width: parent.width
        Text{
            id: name
            font.pointSize: 24
            color: "yellow"
            text: "Munchkins Door Counter"
            anchors.verticalCenter:parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    /*//Rectangle{
        //id: dialog
        //width: beginButton.width
        //height: beginButton.height
        //anchors.horizontalCenter: parent.horizontalCenter
        //anchors.verticalCenter: parent.verticalCenter
        //color: "blue"
        //visible: false
        //radius: 10
        //z: 500
        //Text{
            //text: "You clicked the button"
            //anchors.verticalCenter: parent.verticalCenter
            //anchors.horizontalCenter: parent.horizontalCenter
            //font.pixelSize: parent.height/6
        //}
        //Rectangle{
            //id: confirm
            //width: parent.width/4
            //height: parent.height/4
            //color: "white"
            //radius: 10
            //anchors.bottom: parent.bottom
            //anchors.left: parent.left
            //Text{
                //text: "Confirm"
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                //font.pixelSize: parent.height/3
            //}
            //MouseArea{
                //hoverEnabled: true
                //id:mouseArea
                //anchors.fill: parent
                //onEntered: { parent.color = "green" }
                //onExited: { parent.color = "white" }
                //onClicked: {dialog.visible = false }
            //}
        //}*/
}
