import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _formula = '1+2*3+4+9';
  String _result = '';

  double _parse(String formula) {
    int index = formula.indexOf('+');
    if (index != -1) {
      return _parse(formula.substring(0, index)) +
          _parse(formula.substring(index + 1));
    }
    index = formula.lastIndexOf('-');
    if (index != -1) {
      return _parse(formula.substring(0, index)) -
          _parse(formula.substring(index + 1));
    }
    index = formula.indexOf('*');
    if (index != -1) {
      return _parse(formula.substring(0, index)) *
          _parse(formula.substring(index + 1));
    }
    index = formula.lastIndexOf('/');
    if (index != -1) {
      return _parse(formula.substring(0, index)) /
          _parse(formula.substring(index + 1));
    }
    return double.parse(formula);
  }

  void _compute() {
    setState(() {
      _result = _parse(_formula).toString();
    });
  }

  void _clear() {
    setState(() {
      _result = '';
    });
  }

  void _inputResult1() {
    setState(() {
      _result += '1';
    });
  }

  void _inputResult2() {
    setState(() {
      _result += '2';
    });
  }

  void _inputResult3() {
    setState(() {
      _result += '3';
    });
  }

  void _inputResult4() {
    setState(() {
      _result += '4';
    });
  }

  void _inputResult5() {
    setState(() {
      _result += '5';
    });
  }

  void _inputResult6() {
    setState(() {
      _result += '6';
    });
  }

  void _inputResult7() {
    setState(() {
      _result += '7';
    });
  }

  void _inputResult8() {
    setState(() {
      _result += '8';
    });
  }

  void _inputResult9() {
    setState(() {
      _result += '9';
    });
  }

  void _inputResult0() {
    setState(() {
      _result += '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$_formula',
              style: Theme.of(context).textTheme.display1,
            ),
            Row(children: <Widget>[
              Text(
                '=',
                style: Theme.of(context).textTheme.display1,
              ),
              Text(
                '$_result',
                style: Theme.of(context).textTheme.display1,
              )
            ]),
            Table(children: <TableRow>[
              TableRow(children: <Widget>[
                Table(
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      RaisedButton(
                        child: Text('1'),
                        onPressed: _inputResult1,
                      ),
                      RaisedButton(
                        child: Text('2'),
                        onPressed: _inputResult2,
                      ),
                      RaisedButton(
                        child: Text('3'),
                        onPressed: _inputResult3,
                      )
                    ]),
                    TableRow(children: <Widget>[
                      RaisedButton(
                        child: Text('4'),
                        onPressed: _inputResult4,
                      ),
                      RaisedButton(
                        child: Text('5'),
                        onPressed: _inputResult5,
                      ),
                      RaisedButton(
                        child: Text('6'),
                        onPressed: _inputResult6,
                      )
                    ]),
                  ],
                ),
                RaisedButton(
                  child: Text('开始'),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('结束'),
                  onPressed: () {},
                ),
              ]),
              TableRow(children: <Widget>[
                Table(
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      RaisedButton(
                        child: Text('7'),
                        onPressed: _inputResult7,
                      ),
                      RaisedButton(
                        child: Text('8'),
                        onPressed: _inputResult8,
                      ),
                      RaisedButton(
                        child: Text('9'),
                        onPressed: _inputResult9,
                      )
                    ]),
                    TableRow(children: <Widget>[
                      RaisedButton(
                        child: Text('清除'),
                        onPressed: _clear,
                      ),
                      RaisedButton(
                        child: Text('0'),
                        onPressed: _inputResult0,
                      ),
                      RaisedButton(
                        child: Text('确认'),
                        onPressed: _compute,
                      )
                    ]),
                  ],
                ),
                RaisedButton(
                  child: Text('下一题'),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('正确答案'),
                  onPressed: () {},
                ),
              ])
            ])
          ],
        ),
      ),
    );
  }
}
