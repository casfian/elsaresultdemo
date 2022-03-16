import 'package:flutter/material.dart';

class RowBreakdownWidget extends StatefulWidget {
  const RowBreakdownWidget(
      {Key? key,
      required this.factor,
      this.priority,
      required this.baselineprofile,
      required this.bgcolor})
      : super(key: key);

  final String factor, baselineprofile;
  final String? priority;
  final Color bgcolor;


  @override
  State<RowBreakdownWidget> createState() => _RowBreakdownWidgetState();
}

class _RowBreakdownWidgetState extends State<RowBreakdownWidget> {

  @override
  Widget build(BuildContext context) {
    var _screenwidth = MediaQuery.of(context).size.width / 3;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 2, 2, 2),
          width: _screenwidth,
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.factor,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          width: _screenwidth,
          height: 50,
          child: Column(
            children: [
              Text(
                widget.priority!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          width: _screenwidth,
          height: 50,
          child: Column(
            children: [
              Container(
                width: _screenwidth,
                height: 40,
                color: widget.bgcolor,
                child: Center(
                  child: Text(
                    widget.baselineprofile.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
