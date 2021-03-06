import QtQuick 2.1
import QtQuick.Controls 1.0
import "qrc:/gcompris/src/core"
import GCompris 1.0

ActivityBase {
    id: menuActivity
    focus: true

    onHome: pageView.depth === 1 ? Qt.quit() : pageView.pop()

    onDisplayDialog: pageView.push(dialog)

    pageComponent: Image {
        source: "qrc:/gcompris/src/activities/menu/resource/background.svgz"
        fillMode: Image.PreserveAspectCrop

        Loader { id: activityLoader }

        property int iconWidth: 210
        property int iconHeight: 210

        GridView {
            x: 0
            y: 10
            width: main.width
            height: main.height - 50
            cellWidth: iconWidth+(main.width%iconWidth)/Math.round(main.width/iconWidth)
            cellHeight: iconHeight
            focus: true
            clip: true
            model: ActivityInfoTree.menuTree
            delegate: Item {
                width: iconWidth+(main.width%iconWidth)/Math.round(main.width/iconWidth)
                height: iconHeight
                Rectangle {
                    id: background
                    width: 200
                    height: 200
                    anchors.horizontalCenter: parent.horizontalCenter
                    opacity: 0.6
                    border.width: 2
                    border.color: "black"
                }
                Image {
                    source: "qrc:/gcompris/src/activities/" + icon;
                    anchors.top: background.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 5
                    Text {
                        anchors.top: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        width: background.width
                        fontSizeMode: Text.Fit
                        minimumPointSize: 7
                        font.pointSize: 14
                        elide: Text.ElideRight
                        maximumLineCount: 2
                        wrapMode: Text.WordWrap
                        text: ActivityInfoTree.menuTree[index].title
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        ActivityInfoTree.currentActivity = ActivityInfoTree.menuTree[index]
                        activityLoader.source = "qrc:/gcompris/src/activities/" +
                                ActivityInfoTree.menuTree[index].name + "/Activity.qml"
                        activityLoader.item.home.connect(home)
                        activityLoader.item.displayDialog.connect(displayDialog)
                        pageView.push(activityLoader.item)
                    }
                }
            }
        }
    }

    DialogAbout {
        id: dialogAbout
        onClose: home()
    }
    DialogHelp {
        id: dialogHelp
        onClose: home()
        activityInfo: ActivityInfoTree.rootMenu
    }

    Bar {
        id: bar
        content: BarEnumContent { value: help | exit | about }
        onAboutClicked: {
            displayDialog(dialogAbout)
        }

        onHelpClicked: {
            displayDialog(dialogHelp)
        }
    }
}
