import QtQuick 2.0

Image {
    id: bonus
    visible: true
    opacity: 0
    anchors.fill: parent
    fillMode: Image.Pad
    z: 1000

    signal done

    function good(name) {
        source = "qrc:/gcompris/src/core/resource/bonus/" + name + "_good.png"
        animation.start()
    }

    function bad(name) {
        source = "qrc:/gcompris/src/core/resource/bonus/" + name + "_bad.png"
        animation.start()
    }

    SequentialAnimation {
        id: animation
        NumberAnimation {
            target: bonus
            property: "opacity"
            from: 0; to: 1.0
            duration: 1000
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: bonus
            property: "opacity"
            from: 1.0; to: 0
            duration: 500
            easing.type: Easing.InOutQuad
        }
        onStopped: done()
    }
}
