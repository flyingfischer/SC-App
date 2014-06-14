import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: aboutPage

    SilicaFlickable {
        id: flickable
        anchors.fill: parent

        VerticalScrollDecorator { flickable: flickable }

        contentWidth: aboutColumn.width
        contentHeight: aboutColumn.height + aboutColumn.spacing

        Column {
            id: aboutColumn

            width: aboutPage.width
            spacing: Theme.paddingMedium


            PageHeader {
                title: "About"
            }

            Column {
                spacing: Theme.paddingLarge

                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }

                Column {
                    Label {
                        text: 'SC-App V 0.1'
                        color: Theme.highlightColor
                    }

                   // Label {
                   //     text: 'https://www.swissconsortium.ch/'
                   //     font.pixelSize: Theme.fontSizeSmall
                   //     color: Theme.secondaryColor
                   // }
                }

                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    text: [
                        '© 2014 Markus Fischer',
                        '',
                        'Website:',
                        'https://www.swissconsortium.ch/',
                        '',
                        'Contact:',
                        'support@swissconsortium.ch',
                        ''
                    ].join('\n')
                }
            }
        }
    }
}
