import QtQuick 2.0

Rectangle {
    property alias mouseArea: mouseArea
    height: topWindow.height/4
    color: "#5c2929"
    width: topWindow.width/2
    border.width: 2
    border.color: "brown"
    MouseArea{
        hoverEnabled: true
        id:mouseArea
        anchors.fill: parent
        onEntered: { parent.color = "green" }
        onExited: { parent.color = "#5c2929" }
    }
}
