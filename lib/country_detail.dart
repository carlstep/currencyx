import 'package:flutter/material.dart';
import 'country.dart';

class CountryDetail extends StatefulWidget {
  final Country country;

  const CountryDetail({
    Key? key,
    required this.country
}) : super(key: key);

  @override
  _CountryDetailState createState() {
    return _CountryDetailState();
  }
}

class _CountryDetailState extends State<CountryDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.country.countryLabel),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.country.flagImageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.country.countryLabel,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}