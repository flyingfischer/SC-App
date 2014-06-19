import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: contentSearchPage

    Button {
        id: contentSearchButton
        anchors.bottom: contentSearchPage.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Search")
        onClicked: pageStack.replace(Qt.resolvedUrl("MyResources.qml"), {contentgroup: "Content"})
    }

    SilicaFlickable {
        id: mainFlickable
        anchors { left: parent.left; right: parent.right; top: parent.top; bottom: contentSearchButton.top }
        contentHeight: mainColumn.height
        flickableDirection: Flickable.VerticalFlick
        clip: true

        Column {
            id: mainColumn
            anchors { left: parent.left; right: parent.right }
            height: childrenRect.height
            spacing: Theme.paddingLarge
            PageHeader {
                id: header

                title: qsTr("Search Content")
            }

            Column {
                id: column
                anchors { left: parent.left; right: parent.right }
                height: childrenRect.height
                spacing: Theme.paddingMedium

                TextField {
                    id: allOfTheseWordsField
                    anchors { left: parent.left; right: parent.right }
                    // settingText: qsTr("All of these words")
                    // validator: RegExpValidator { regExp: /(^$|^\S$|^\S.*\S$)/ }
                    placeholderText: qsTr("Search terms")
                    focus: true
                }
            }
        }
        VerticalScrollDecorator { }
    }
}
