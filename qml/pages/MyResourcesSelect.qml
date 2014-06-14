import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: myresourcesSelect
    property string contentgroup

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        id: flick
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Search licensed content")
                onClicked: pageStack.push(Qt.resolvedUrl("SearchContent.qml"))
            }
            MenuItem {
                text: qsTr("Search journal")
                onClicked: pageStack.push(Qt.resolvedUrl("SearchEZB.qml"))
            }
        }

        VerticalScrollDecorator {}

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: myresourcesSelect.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("MyResources")
            }
            Button{
                id: databases
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Databases")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("MyResources.qml"), {contentgroup: "Databases"})
                }
            }
            Button{
                id: coreJournals
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Core Journals A-Z")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("MyResources.qml"), {contentgroup: "Core Journals A-Z"})
                }
            }
            Button{
                id: journalsBySubject
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Journals by subject")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("MyResources.qml"), {contentgroup: "Journals by subject"})
                }
            }
        }
    }
}
