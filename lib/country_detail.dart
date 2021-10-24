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
        child: Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
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
              SizedBox(
                height: 50,
                child: Text(
                  '${widget.country.amount}',
                  style: const TextStyle(fontSize: 30.0),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: widget.country.currencyFx.length,
                    itemBuilder: (BuildContext context, int index) {
                      final currencyFx = widget.country.currencyFx[index];
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0, 16.0, 4),
                            child: Row(
                              children: <Widget>[
                                Text('${currencyFx.currencyCode}',
                                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),),
                                SizedBox(
                                  width: 40.0,
                                ),
                                Text('${currencyFx.exRate}',
                                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}