import 'package:flutter/material.dart';

import 'game.dart';

class ActionButton extends StatelessWidget {
  Function onClickedFunction;
  Icon buttonIcon;
  LastButtonPressed nextAction;
  ActionButton(this.onClickedFunction, this.buttonIcon,this.nextAction);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: RaisedButton(
          onPressed: (){
            onClickedFunction(nextAction);
          },
          color: Colors.blue,
          child: buttonIcon,
        ),
      ),
    );
  }
}
