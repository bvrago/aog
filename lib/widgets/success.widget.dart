import 'package:aog/widgets/load-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text(
          result,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 35,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        LoadingButton(
            busy: false, 
            invert: true, 
            func: reset, 
            text: "Calcular Novamente"),
      ]),
    );
  }
}
