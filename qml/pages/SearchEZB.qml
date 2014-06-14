import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: ezbSearchPage

    Button {
        id: ezbSearchButton
        anchors.bottom: ezbSearchPage.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Search")
        onClicked: pageStack.replace(Qt.resolvedUrl("MyResources.qml"), {contentgroup: "Journals"})
    }

    SilicaFlickable {
        id: mainFlickable
        anchors { left: parent.left; right: parent.right; top: parent.top; bottom: ezbSearchButton.top }
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

                title: qsTr("Search Journal")
            }

            // SectionHeader { text: qsTr("EZB") }

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
                    placeholderText: qsTr("Title of Journal")
                    // focus: true
                }

                DockedPanel {
                    id: panel
                    width: parent.width
                    height: Theme.itemSizeLarge + Theme.paddingLarge
                    dock: Dock.Top

                    Row {
                        anchors.centerIn: parent
                        Switch {
                            icon.source: "../img/ampel_gruen.png"
                            checked: true
                        }
                        Switch {
                            icon.source: "../img/ampel_gelb.png"
                            checked: true
                        }
                        Switch {
                            icon.source: "../img/ampel_rot.png"
                            checked: true
                        }
                    }
                }
            }
        }
        VerticalScrollDecorator { }
    }
}
