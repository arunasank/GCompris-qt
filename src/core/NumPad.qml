import QtQuick 2.0
import QtQuick 2.1
import QtQuick 2.2
import QtQml.Models 2.1
import QtQuick.Controls 1.0
import QtQuick.Window 2.1
import QtMultimedia 5.0
import GCompris 1.0

Item{

    id:containerPanel
    height:parent.height
    width:parent.width

    property variant colours : ["#ea7025", "#67c111", "#00bde3", "#bde300","#e3004c"]
    property variant numbers: [0,1,2,3,4]
    property string answer: ""
    property bool answerFlag: true

    signal onAnswerChanged()

    Column{

        id:leftPanel
        height:parent.height - 70
        width:70
        opacity:0.8


        Repeater {

            model:5
            Rectangle{
                width:parent.width
                height: parent.height/5
                color: colours[index]
                border.color: Qt.darker(color)
                border.width: 2

                Text{
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    text: numbers[index]
                    font.pixelSize: parent.height/2
                }

                MouseArea{
                    anchors.fill:parent
                    //enabled : ApplicationInfo.isMobile ? true : false
                    onClicked :{
                        if(answer.length < 2)
                            answer += numbers[index];

                    }
                    onPressed: {
                        leftPanel.children[index].color = Qt.lighter(colours[index])
                        leftPanel.children[index].border.width = 5
                    }
                    onReleased: {
                        leftPanel.children[index].color = colours[index]
                        leftPanel.children[index].border.width = 2
                    }

                }

            }
        }
    }

    Column{

        id:rightPanel
        height:parent.height - 70
        width:70
        x:parent.width - 70
        opacity:0.8

        Repeater {

            model:5
            Rectangle{
                width:parent.width
                height: parent.height/5
                color: colours[index]
                border.color: Qt.darker(color)
                border.width: 2

                Text{
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    text:numbers[index] + 5
                    font.pixelSize: parent.height/2
                }
                MouseArea{
                    //enabled : ApplicationInfo.isMobile ? true : false
                    anchors.fill:parent

                    onClicked: {
                        if(answer.length < 2)
                            answer += numbers[index] + 5
                    }
                    onPressed: {
                        rightPanel.children[index].color = Qt.lighter(colours[index])
                        rightPanel.children[index].border.width = 5
                    }
                    onReleased: {
                        rightPanel.children[index].color = colours[index]
                        rightPanel.children[index].border.width = 2
                    }
                }
            }
        }
        Rectangle{
            id:backspaceButton
            width:parent.width
            height:containerPanel.height - rightPanel.height
            color: "white"
            border.color: "black"
            border.width: 3

            Text{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text:"←"
                font.pixelSize: parent.height/3
            }

            MouseArea{
                //enabled : ApplicationInfo.isMobile ? true : false
                anchors.fill:parent
                onClicked:{
                    answer = answer.substring(0,answer.length - 1)
                }
                onPressed: {
                    backspaceButton.color = Qt.lighter("white")
                    backspaceButton.border.width = 5
                }

                onReleased: {
                    backspaceButton.color = "white"
                    backspaceButton.border.width = 2
                }
            }

        }

    }

    function resetText()
    {
        answer ="";
    }
}
