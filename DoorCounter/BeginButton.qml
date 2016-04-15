import QtQuick 2.0

Rectangle {
    property alias mouseArea: mouseArea
    height: parent.height/5
    color: "#5c2929"
    width: parent.width/4
    border.width: 2
    border.color: "black"
    MouseArea{
        hoverEnabled: true
        id:mouseArea
        anchors.fill: parent
        onEntered: { parent.color = "green" }
        onExited: { parent.color = "#5c2929" }
    }
}
