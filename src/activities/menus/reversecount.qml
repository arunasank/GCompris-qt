import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "reversecount"
  dir: "src/activities/reversecount"
  difficulty: 2
  icon: "menus/reversecount.svg"
  author: "Bruno Coudoin <bruno.coudoin@gcompris.net>"
  demo: false
  title: qsTr("Practice subtraction with a fun game")
  description: qsTr("Tux is hungry. Help him find fish by counting to the correct ice spot.")
  goal: qsTr("Tux is hungry. Help him find fish by counting to the correct ice spot.")
  prerequisite: qsTr("Can move the mouse, can read numbers and subtract numbers up to 10 for the first level")
  manual: qsTr("Click on the dice to show how many ice spots there are between Tux and the fish. Click the dice with the right mouse button to count backwards. When done, click on the OK button or hit the Enter key.")
  credit: ""
}
