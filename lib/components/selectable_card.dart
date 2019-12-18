import 'package:flutter/material.dart';

class SelectableCard extends StatefulWidget {
  final String title;
  final ValueChanged<bool> onChanged;

  SelectableCard({this.title, this.onChanged});

  @override
  _SelectableCardState createState() => _SelectableCardState();
}

class _SelectableCardState extends State<SelectableCard> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.redAccent,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(children: <Widget>[
              Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 20),
                  )),
              Material(
                color: Colors.transparent,
                child: Checkbox(
                  checkColor: Colors.white70,
                  activeColor: Colors.redAccent,
                  focusColor: Colors.redAccent,
                  value: isSelected,
                  onChanged: null,
                ),
              )
            ]),
          ),
          onTap: () {
            setState(() {
              isSelected = !isSelected;
              widget.onChanged(isSelected);
            });
          },
        ),
      ),
    );
  }
}
