import QtQuick 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

ApplicationWindow {

    id: window
    visible: true
    title: qsTr("Calculator")
    width: 1024
    height: 700
    color: "white"


    RowLayout {
       width: window.width
       height: window.height
       spacing: 0

       ColumnLayout {
           width: parent.width - 277
           height: parent.height
           spacing: 0

           ColumnLayout {
               id: screenParent
               width: parent.width
               height: parent.height / 100 * 33
               spacing: 0

               RowLayout {
                   width: parent.width
                   height: 48
                   spacing: 0

                   Header {
                       content: "SCIENTIFIC CALCULATOR"
                   }


               }

               Rectangle {
                   Layout.fillWidth: true
                   height: parent.height - 96
                   color: "white"
                   Text {
                       anchors.verticalCenter: parent.verticalCenter
                       anchors.right: parent.right
                       anchors.rightMargin: 16
                       textFormat: Text.RichText
                       text: ""
                       font.pixelSize: 16
                   }
               }

               Rectangle {
                   Layout.fillWidth: true
                   height: 48
                   color: "#4a4a4a"

                   RowLayout {
                       //width: parent.width
                       height: 48
                       spacing: 0

                       MemoryKey {
                           value: "Deg"
                       }

                       MemoryKey {
                           value: "HYP"
                       }

                       MemoryKey {
                           value: "F-E"
                       }
                   }

               }

           }

           Rectangle {
               Layout.fillWidth: true
               height: parent.height / 100 * 67
               color: "#4a4a4a"

               ColumnLayout {
                   width: parent.width
                   height: parent.height
                   spacing: 0

                   RowLayout {
                       width: parent.width
                       height: 48
                       spacing: 0

                       MemoryKey {
                       }

                       MemoryKey {
                           value: "MR"
                       }

                       MemoryKey {
                           value: "M+"
                       }

                       MemoryKey {
                           value: "M-"
                       }

                       MemoryKey {
                           value: "MS"
                       }

                   }

                   RowLayout {
                       width: parent.width
                       height: parent.height - 48
                       spacing: 0

                       GridLayout {
                           width: parent.width / 9 * 5
                           height: parent.height
                           columns: 5
                           rowSpacing: 0
                           columnSpacing: 0

                           CalculatorKey {
                               value: "^2"
                               icon: "icons/square_white.png"
                           }

                           CalculatorKey {
                               value: "^y"
                               icon: "icons/exponent_y_white.png"
                           }

                           CalculatorKey {
                               value: "sin"
                           }

                           CalculatorKey {
                               value: "cos"
                           }

                           CalculatorKey {
                               value: "tan"
                           }

                           CalculatorKey {
                               value: "^3"
                               icon: "icons/cube_white.png"
                           }

                           CalculatorKey {
                               value: "y/x"
                               icon: "icons/y_root_x_white.png"
                           }

                           CalculatorKey {
                               value: "1/sin"
                               icon: "icons/sine_inverse_white.png"
                           }

                           CalculatorKey {
                               value: "1/cos"
                               icon: "icons/cos_inverse_white.png"
                           }

                           CalculatorKey {
                               value: "1/tan"
                               icon: "icons/tan_inverse_white.png"
                           }

                           CalculatorKey {
                               value: "../"
                               icon: "icons/root_white.png"
                           }

                           CalculatorKey {
                               value: "10^x"
                               icon: "icons/ten_x_white.png"
                           }

                           CalculatorKey {
                               value: "log"
                           }

                           CalculatorKey {
                               value: "Exp"
                           }

                           CalculatorKey {
                               value: "Mod"
                           }

                           CalculatorKey {
                               value: "1/x"
                               icon: "icons/x_inverse_white.png"
                           }

                           CalculatorKey {
                               value: "e^x"
                               icon: "icons/exponent_x_white.png"
                           }

                           CalculatorKey {
                               value: "In"
                           }

                           CalculatorKey {
                               value: "dms"
                           }

                           CalculatorKey {
                               value: "deg"
                           }

                           CalculatorKey {
                               value: ""
                               onClick: {
                                   screen.text = 'love'
                               }
                           }

                           CalculatorKey {
                               value: "pi"
                               icon: "icons/pi_white.png"
                           }

                           CalculatorKey {
                               value: "n!"
                               icon: "icons/factorial_white.png"
                           }

                           CalculatorKey {
                               value: "("
                           }

                           CalculatorKey {
                               value: ")"
                           }



                       }

                       GridLayout {
                           width: parent.width / 9 * 4
                           height: parent.height
                           columns: 4
                           rowSpacing: 0
                           columnSpacing: 0

                           CalculatorKey {
                               value: "CE"
                           }

                           CalculatorKey {
                               value: "C"
                           }

                           CalculatorKey {
                               value: "Del"
                               icon: "icons/delete_white.png"
                           }

                           CalculatorKey {
                               value: "/"
                               icon: "icons/division_white.png"
                           }

                           CalculatorKey {
                               value: "7"
                           }

                           CalculatorKey {
                               value: "8"
                           }

                           CalculatorKey {
                               value: "9"
                           }

                           CalculatorKey {
                               value: "x"
                               icon: "icons/multiplication_white.png"
                           }

                           CalculatorKey {
                               value: "4"
                           }

                           CalculatorKey {
                               value: "5"
                           }

                           CalculatorKey {
                               value: "6"
                           }

                           CalculatorKey {
                               value: "-"
                               icon: "icons/minus_white.png"
                           }

                           CalculatorKey {
                               value: "1"
                           }

                           CalculatorKey {
                               value: "2"
                           }

                           CalculatorKey {
                               value: "3"
                           }

                           CalculatorKey {
                               value: "+"
                           }

                           CalculatorKey {
                               value: "+"
                           }

                           CalculatorKey {
                               value: "0"
                           }

                           CalculatorKey {
                               value: "."
                           }

                           CalculatorKey {
                               value: "="
                               icon: "icons/equal_white.png"
                           }

                       }

                   }

               }
           }


       }

       // border
       Rectangle {
           width: 1
           height: parent.height
           color: "#e1e1e1"
       }

       Rectangle {
           width: 276
           height: parent.height
           color: "white"
       }


    }

}
