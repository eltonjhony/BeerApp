import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:my_app/components/FTProductHeaderView.dart';
import 'package:my_app/components/FTProductListAdapter.dart';
import 'package:my_app/models/Beer.dart';
import 'package:my_app/repository/BeersRepository.dart';

class LandingPage extends StatefulWidget {
  @override
  createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Beer> _beers = <Beer>[];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _fetchBeers();
  }

  void _fetchBeers() async {
    setState(() {
      _loading = true;
    });
    final Stream<Beer> stream = await getBeers();
    stream
        .toList()
        .whenComplete(() => _loading = false)
        .then((List<Beer> beers) => setState(() => _beers.addAll(beers)));
  }

  Widget build(BuildContext context) {
    return PlatformScaffold(
        iosContentPadding: true,
        appBar: PlatformAppBar(title: Text('BeerApp')),
        body: CustomScrollView(
          primary: true,
          slivers: <Widget>[
            FTProductHeaderView(),
            _loading
                ? SliverToBoxAdapter(
                    child: Center(
                      child: PlatformCircularProgressIndicator(),
                    ),
                  )
                : FTProductListAdapter(_beers)
          ],
        ));
  }
}
