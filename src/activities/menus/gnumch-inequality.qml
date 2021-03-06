import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "gnumch-inequality"
  dir: "src/activities/gnumch-inequality"
  difficulty: 3
  icon: "menus/gnumch-inequal.svg"
  author: "Joe Neeman <spuzzzzzzz@gmail.com>"
  demo: true
  title: qsTr("Inequality Number Munchers")
  description: qsTr("Guide the Number Muncher to the all the expressions that do not equal the number at the top of the screen.")
  goal: qsTr("Practice addition, subtraction, multiplication and division.")
  prerequisite: ""
  manual: qsTr("Use the arrow keys to navigate around the board and to avoid the Troggles. Press the spacebar to eat a number.")
  credit: ""
}
