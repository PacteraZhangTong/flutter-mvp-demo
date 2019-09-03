import 'package:flutter/material.dart';
import 'package:flutter_mvp/presenter/creatguest_Presenter.dart';
import 'package:minefocus_base_flutter/minefocus_base_flutter.dart';

import 'creatguest_contract.dart';
import 'loading_view.dart';
import 'main.reflectable.dart';

void main() {
  initializeReflectable();
  MinefocusBase.shared()
      .config('https://awabank-server-api-stg.scsk-api.minefocus.jp/api/v1');
  runApp(MyApp());
}

final _memberSymbolMap = null;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mvp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mvp Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements View {
  LoadingView loading = LoadingView();

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    CreatGuestPresenter presenter = new CreatGuestPresenter(this);

    return Scaffold(
        appBar: AppBar(
          title: Text('Mvp Demo'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('获取JWT'),
            onPressed: () {
              presenter.creatGuestUser();
            },
          ),
        ));
  }

  @override
  void creatGuestUserSuccess() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('请求成功'),
          content: new SingleChildScrollView(),
          actions: <Widget>[
            new FlatButton(
              child: new Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  @override
  void oncreatGuestUserError() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('请求失败'),
          content: new SingleChildScrollView(),
          actions: <Widget>[
            new FlatButton(
              child: new Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  @override
  hideLoading() {
    loading.dismiss(context);
  }

  @override
  showLoadin() {
    loading.show(context);
  }
}
