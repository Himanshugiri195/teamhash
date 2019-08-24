import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePageo extends StatefulWidget {
  final Widget child;

  HomePageo({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageo> {
  List<charts.Series<Dengue, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Deaths, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new Dengue(1980, '2008', 30),
      new Dengue(1980, '2009', 40),
      new Dengue(1980, '2010', 10),
    ];
    var data2 = [
      new Dengue(1985, '2008', 100),
      new Dengue(1980, '2009', 150),
      new Dengue(1985, '2010', 80),
    ];
    var data3 = [
      new Dengue(1985, '2008', 200),
      new Dengue(1980, '2009', 300),
      new Dengue(1985, '2010', 180),
    ];
    //Acute RespiratoryInfection
    //Acute Diarroheal
    //Acute Ecephalitis
    var piedata = [
      new Task('Pneumonia', 23, Color(0xff3366cc)),
      new Task('ARI', 10, Color(0xff990099)),
      new Task('H1N1', 16, Color(0xff109618)),
      new Task('AD', 5, Color(0xfffdbe19)),
      new Task('AE', 7, Color(0xffff9900)),
      new Task('Viral Fever', 4, Color(0xffcc7a00)),
      new Task('Other', 10.3, Color(0xffdc3912)),
    ];

    var linesalesdata = [
      new Deaths(5, 45),
      new Deaths(4, 56),
      new Deaths(3, 55),
      new Deaths(2, 60),
      new Deaths(1, 61),
      new Deaths(0, 70),
    ];
    var linesalesdata1 = [
      new Deaths(5, 35),
      new Deaths(4, 46),
      new Deaths(3, 45),
      new Deaths(2, 50),
      new Deaths(1, 51),
      new Deaths(0, 60),
    ];

    var linesalesdata2 = [
      new Deaths(5, 20),
      new Deaths(4, 24),
      new Deaths(3, 25),
      new Deaths(2, 40),
      new Deaths(1, 45),
      new Deaths(0, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Dengue dengue, _) => dengue.place,
        measureFn: (Dengue dengue, _) => dengue.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Dengue dengue, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ), 
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Dengue dengue, _) => dengue.place,
        measureFn: (Dengue dengue, _) => dengue.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Dengue dengue, _) =>
           charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Dengue dengue, _) => dengue.place,
        measureFn: (Dengue dengue, _) => dengue.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
       fillColorFn: (Dengue dengue, _) =>
          charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
         labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Deaths deaths, _) => deaths.yearval,
        measureFn: (Deaths deaths, _) => deaths.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Deaths deaths, _) => deaths.yearval,
        measureFn: (Deaths deaths, _) => deaths.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Deaths deaths, _) => deaths.yearval,
        measureFn: (Deaths deaths, _) => deaths.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Dengue, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Deaths, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text('Disease charts '),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Dengue Test In masses',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Percentage distribution of Mortality Reported 2017',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                            _seriesPieData,
                            animate: true,
                            animationDuration: Duration(seconds: 3),
                             behaviors: [
                            new charts.DatumLegend(
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                              entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.purple.shadeDefault,
                                  fontFamily: 'Georgia',
                                  fontSize: 11),
                            )
                          ],
                           defaultRenderer: new charts.ArcRendererConfig(
                              arcWidth: 100,
                             arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.inside)
        ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Deaths by various diseases',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                            _seriesLineData,
                            defaultRenderer: new charts.LineRendererConfig(
                                includeArea: true, stacked: true),
                            animate: true,
                            animationDuration: Duration(seconds: 3),
                            behaviors: [
        new charts.ChartTitle('Years',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('Number of deaths in 2010-2015',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('In one month',
            behaviorPosition: charts.BehaviorPosition.end,
            titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
            )   
      ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dengue {
  String place;
  int year;
  int quantity;

  Dengue(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Deaths {
  int yearval;
  int salesval;

  Deaths(this.yearval, this.salesval);
}