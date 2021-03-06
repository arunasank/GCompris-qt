import QtQuick 2.2
import QtQuick.Controls 1.1

DialogBackground {
    visible: false
    title: "About GCompris"
    subtitle: "GCompris Home Page: http://gcompris.net"

    property string translators: "Bruno Coudoin <bruno.coudoin@free.fr>\n" +
    "Christophe Merlet <redfox@redfoxcenter.org>\n" +
    "Laurent Richard <laurent.richard@lilit.be>\n" +
    "Jonathan Ernst <jonathan@ernstfamily.ch>\n" +
    "Claude Paroz <claude@2xlibre.net>\n" +
    "Jean-Philippe Ayanidès <jp.ayanides@free.fr>\n" +
    "Mickael Albertus <mickael.albertus@gmail.com>"

    content: "<center><b>" + "GCompris V13.11" + "</b></center>" + "<br/>" +
                  "<b>" + "Translators: " +"</b>" + translators + "<br/>" +
             "<center><b>" + "Copyright 2000-2013 Bruno Coudoin and Others" + "</b></center>" + "<br/>" +
             "<center><b>" + "This software is a GNU Package and is released under the GNU General Public License" + "</b></center>"
}
