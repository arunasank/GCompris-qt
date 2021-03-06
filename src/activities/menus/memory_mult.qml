import QtQuick 2.0
import GCompris 1.0

ActivityInfo {
  name: "memory_mult"
  dir: "src/activities/memory_mult"
  difficulty: 1
  icon: "menus/mem_solo_mult.svg"
  author: "Yves Combe <yves@ycombe.net>"
  demo: true
  title: qsTr("Multiplication memory game")
  description: qsTr("Turn the cards over to find two numbers which multiply the same, until all the cards are gone.")
  goal: qsTr("Practise multiplication, until all the cards are gone.")
  prerequisite: qsTr("Multiplication")
  manual: qsTr("You can see some cards, but you can't see what's on the other side of them. Each card is hiding an operation, or the answer to it.

In this game, these cards are hiding the two parts of an operation. You need to find the two parts of the operation, and bring them together again. Click on a card to see what number it's hiding, then try to find the other card that goes with it, to make a whole operation. You can only turn over two cards in one go, so you need to remember where the numbers are hiding, then you can match them when you find their other half. You're doing the job of the equals sign, and the numbers need you to put them together and make a proper equality. When you do that, both those cards disappear! When you've made them all disappear, found all the operations, you've won the game! :)")
  credit: ""
}
