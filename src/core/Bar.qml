import QtQuick 2.1
import "core.js" as Core

Rectangle {
    id: bar
    color: "red"
    radius: 5.0
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    width: barRow.width
    height: barRow.height - 30
    border.color: "black"
    border.width: 2
    scale: 1.0
    z: 1000
    property BarEnumContent content
    property int level: 0
    signal aboutClicked
    signal helpClicked
    signal nextLevelClicked
    signal previousLevelClicked

    function show(newContent) {
        content.value = newContent
    }

    Row {
        id: barRow
        spacing: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        Item { width: 10; height: 1 }
        BarButton {
            source: "qrc:/gcompris/src/core/resource/bar_exit.svgz";
            contentId: content.exit
            onClicked: Qt.quit();
        }
        BarButton {
            source: "qrc:/gcompris/src/core/resource/bar_about.svgz";
            contentId: content.about
            onClicked: bar.aboutClicked()
        }
        BarButton {
            source: "qrc:/gcompris/src/core/resource/bar_help.svgz";
            contentId: content.help
            onClicked: bar.helpClicked()
        }
        BarButton {
            id: previousButton
            source: "qrc:/gcompris/src/core/resource/bar_previous.svgz";
            contentId: content.previous
            onClicked: bar.previousLevelClicked()
        }
        Text {
            text: "" + level
            font.family: "Helvetica"
            font.pointSize: 24
            font.weight: Font.DemiBold
            style: Text.Outline;
            styleColor: "grey"
            color: "black"
            visible: level > 0 ? 1.0 : 0
        }
        BarButton {
            id: nextButton
            source: "qrc:/gcompris/src/core/resource/bar_next.svgz";
            contentId: content.next
            onClicked: bar.nextLevelClicked()
        }
        BarButton {
            id: homeButton
            source: "qrc:/gcompris/src/core/resource/bar_home.svgz";
            contentId: content.home
            onClicked: Core.stopActivity()
        }
        Item { width: 10; height: 1 }
    }
}
