import QtQuick 2.0

Rectangle {
    property alias mouseArea: mouseArea
    height: topWindow.height/3
    color: "black"
    width: topWindow.width/2
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
