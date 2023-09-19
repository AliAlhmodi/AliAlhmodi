 import 'package:flutter/material.dart'; 
 
   class CalculatorApp extends StatelessWidget {
   @override Widget build(BuildContext context)
    { return MaterialApp( title: 'Calculator', theme: ThemeData
    ( primarySwatch: Colors.blue, ), home: 
    CalculatorHome(),
     ); 
   } } class CalculatorHome extends StatefulWidget { @override
    _CalculatorHomeState createState() => _CalculatorHomeState();
    } class _CalculatorHomeState extends State { String _output = '0';
     double _num1 = 0; double _num2 = 0; String _operation = ''; 
     void _buttonPressed(String buttonText)
     { setState(() { if (buttonText == 'C') { _output = '0'; _num1 
     = 0; _num2 = 0; _operation = ''; } 
     else if (buttonText == '+' || buttonText == 
     '-' || buttonText == '*' || buttonText == '/')
     { _num1 = double.parse(_output); _operation =
      buttonText; _output = '0'; } else if (buttonText == '.')
      { if (!_output.contains('.')) 
      { _output += buttonText; } 
      } else if (buttonText == '=') 
      { _num2 = double.parse(_output); if (_operation == '+')
       { _output = (_num1 + _num2).toString(); 
      } if (_operation == '-') { _output = (_num1 - _num2).toString(); 
      }
       if (_operation == '*')
       { _output = (_num1 * _num2).toString(); } if (_operation == '/') 
       { _output = (_num1 / _num2).toString(); } } 
       else { if (_output == '0') { _output = buttonText; 
       }
        else { _output += buttonText; } } }); 
       }
        Widget _buildButton (String buttonText, Color buttonColor, int buttonFlex) 
       { return Expanded
       ( flex: buttonFlex, child: Padding
       ( padding: EdgeInsets.all(8.0), child: ElevatedButton( style: 
       ElevatedButton.styleFrom( primary: buttonColor, ),
        onPressed: () => _buttonPressed(buttonText)
        , child: Text( buttonText, style: TextStyle( fontSize: 24.0,
         fontWeight: FontWeight.bold,
          ), ), 
         ), ), );
          } 
          @override Widget build(BuildContext context) 
         { 
           return Scaffold( appBar: AppBar( title: Text('Calculator'),
          ), 
          body: Column( children: [ Container( alignment: Alignment.centerRight,
           padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
            child: Text( _output, style: TextStyle
            ( fontSize: 48.0, fontWeight: FontWeight.bold, 
            ), 
            ), 
            ), 
            Expanded( child: Divider(), ),
             Column( children:
             [ Row( children: [ _buildButton('7', Colors.grey, 1), _buildButton('8', Colors.grey, 1),
              _buildButton('9', Colors.grey, 1), _buildButton('/', Colors.orange, 1), ], ), Row( children:
               [ _buildButton('4', Colors.grey, 1), _buildButton('5', Colors.grey, 1),
                _buildButton('6', Colors.grey, 1), _buildButton('*', Colors.orange, 1), ], ), Row( children: 
                [ _buildButton('1', Colors.grey, 1), _buildButton('2', Colors.grey, 1),
                 _buildButton('3', Colors.grey, 1), _buildButton('-', Colors.orange, 1), ], ), Row( children: 
                 [ _buildButton('.', Colors.grey, 1), _buildButton('0', Colors.grey, 1),
                  _buildButton('00', Colors.grey, 1), _buildButton('+', Colors.orange, 1), ], ), Row( children: 
                  [ _buildButton('C', Colors.red, 4), _buildButton('=',
 Colors.orange, 1), ], ), ], ), ], ), ); } }