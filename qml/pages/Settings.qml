import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: settings

    SilicaFlickable {
        id: flick
        anchors.fill: parent
        contentHeight: contentColumn.height
        contentWidth: flick.width

        Column {
            id: contentColumn
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 5

            PageHeader {
                title: "Settings"
            }

            TextField {
                id:textEditor
                width: parent.width
                color: Theme.primaryColor
                font.family: Theme.fontFamily
                font.pixelSize: Theme.fontSizeMedium
                placeholderText: "Text eingeben"
                // focus: true
            }
        }
    }
}
