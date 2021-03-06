import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "memory_enumerate"
  dir: "src/activities/memory_enumerate"
  difficulty: 1
  icon: "menus/memo_enumerate.svg"
  author: "Yves Combe <yves@ycombe.net>"
  demo: true
  title: qsTr("Enumeration memory game")
  description: qsTr("Turn the cards over to match the number with the drawn picture.")
  goal: qsTr("Numeration training, memory.")
  prerequisite: qsTr("Addition")
  manual: qsTr("You can see some cards, but you can't see what's on the other side of them. Each card is hiding a number of pictures, or the written number.")
  credit: ""
}
