import 'package:flutter/material.dart';
import 'cable.dart';

class CableDetail extends StatefulWidget {
  final Cable cable;
  const CableDetail({
    Key? key,
    required this.cable,
  }) : super(key: key);
  @override
  State<CableDetail> createState() {
    return _CableDetailState();
  }
}
// TODO: Add _CableDetailState here

class _CableDetailState extends State<CableDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cable.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.cable.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.cable.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.cable.materials.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.cable.materials[index];

                  return Text('${ingredient.quantity * _sliderVal} '
                      '${ingredient.measure} '
                      '${ingredient.name}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              label: '${_sliderVal * widget.cable.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Color.fromARGB(255, 79, 131, 194),
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}