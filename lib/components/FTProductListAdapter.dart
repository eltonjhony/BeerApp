import 'package:flutter/cupertino.dart';
import 'package:my_app/components/FTProductItemView.dart';
import 'package:my_app/models/Beer.dart';

class FTProductListAdapter extends StatefulWidget {

  final List<Beer> beers;

  FTProductListAdapter(this.beers);

  @override createState() => _FTProductListAdapter(beers);
}

class _FTProductListAdapter extends State<FTProductListAdapter> {

  final List<Beer> _beers; 

  _FTProductListAdapter(this._beers);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(10.0),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        children: _beers.map((beer) => FTProductItemView(beer)).toList(),
      ),
    );
  }
}
