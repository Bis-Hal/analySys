class SalesDTO{
  String _title;
  Map<int, double> _yearsPlot;

  SalesDTO(this._title, this._yearsPlot);

 Map<int,double> get yearsPlot => _yearsPlot;

  set yearsPlot(Map<int, double> value) {
    _yearsPlot = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}