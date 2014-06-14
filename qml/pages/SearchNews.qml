import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: advSearchPage

    property string topic: "All topics"

    function __contructQuery() {
        var query = ""

        if (allOfTheseWordsField.textFieldText && allOfTheseWordsField.acceptableInput)
            query += allOfTheseWordsField.textFieldText + " "
        else query += "exclude:retweets"

        return query
    }

    Button {
        id: advSearchButton
        anchors.bottom: advSearchPage.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Search")
        // onClicked: pageStack.replace(Qt.resolvedUrl("News.qml"), {searchString: __contructQuery()})
        onClicked: pageStack.replace(Qt.resolvedUrl("News.qml"), {topic: topic})
    }

    SilicaFlickable {
        id: mainFlickable
        anchors { left: parent.left; right: parent.right; top: parent.top; bottom: advSearchButton.top }
        contentHeight: mainColumn.height
        flickableDirection: Flickable.VerticalFlick
        clip: true

        VerticalScrollDecorator { }

        Column {
            id: mainColumn
            anchors { left: parent.left; right: parent.right }
            height: childrenRect.height
            spacing: Theme.paddingLarge
            PageHeader {
                id: header

                title: qsTr("Search News")
            }

            SectionHeader { text: qsTr(topic) }

            Column {
                id: column
                anchors { left: parent.left; right: parent.right }
                height: childrenRect.height
                spacing: Theme.paddingMedium

                TextField {
                    id: allOfTheseWordsField
                    anchors { left: parent.left; right: parent.right }
                    // settingText: qsTr("All of these words")
                    validator: RegExpValidator { regExp: /(^$|^\S$|^\S.*\S$)/ }
                    placeholderText: qsTr("Search terms")
                    focus: true
                }
                ValueButton {
                    id: selectTopic
                    label: "Select topic"
                    onClicked: pageStack.push(Qt.resolvedUrl("Topics.qml"), {"parentPage": advSearchPage})
                }
            }
        }
    }
}
