import 'package:flutter/material.dart';
import 'package:flutter_mvp/presenter/creatguest_Presenter.dart';
import 'package:minefocus_base_flutter/minefocus_base_flutter.dart';

import 'creatguest_contract.dart';
import 'loading_view.dart';

void main() {
  MinefocusBase.shared().config('https://awabank-server-api-stg.scsk-api.minefocus.jp/api/v1');
  runApp(MyApp());
}

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

class _MyHomePageState extends State<MyHomePage> implements View{

  CreatGuestPresenter _presenter;
  LoadingView loading = LoadingView();

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }

  @override
  void creatGuestUserSuccess() {
    // TODO: implement creatGuestUserSuccess
  }


  @override
  void oncreatGuestUserError() {
    // TODO: implement oncreatGuestUserError
  }

  @override
  setPresenter(Presenter presenter) {
    _presenter = presenter as CreatGuestPresenter;
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
