class Compute {
  String _expression;
  dynamic _result;


  dynamic get result => _result;

  void _computeResult(){
    _result = _parse(_expression);
  }

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

}
