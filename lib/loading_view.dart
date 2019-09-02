import 'package:flutter/material.dart';


class LoadingView extends StatelessWidget {

  dismiss(BuildContext context) {
    Navigator.of(context).pop();
  }

  show(BuildContext context) {
    showDialog(context: context,
        barrierDismissible: false,
        builder: ((BuildContext context) {
      return this;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('loading....',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          decoration: TextDecoration.none
        )
      ),
    );
  }
}
