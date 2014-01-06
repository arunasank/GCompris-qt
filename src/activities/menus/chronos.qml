import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "chronos"
  dir: "src/activities/chronos"
  difficulty: 1
  icon: "menus/chronos.svg"
  author: "José Jorge <jjorge@free.fr>"
  demo: true
  title: qsTr("Chronos")
  description: qsTr("Drag and Drop the items to organize the story")
  goal: qsTr("Sort the pictures into the order that tells the story")
  prerequisite: qsTr("Tell a short story")
  manual: qsTr("Pick from the pictures on the left and put them on the red dots")
  credit: qsTr("Moon photo is copyright NASA. The space sounds come from Tuxpaint and Vegastrike which are released under the GPL license. The transportation images are copyright Franck Doucet. Dates of Transportation are based on those found in &lt;http://www.wikipedia.org&gt;.")
}
