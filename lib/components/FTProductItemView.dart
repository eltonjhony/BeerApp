import 'package:flutter/material.dart';
import 'package:my_app/models/Beer.dart';

class FTProductItemView extends StatefulWidget {
  final Beer product;

  FTProductItemView(this.product);

  @override
  createState() => _FTProductItemView(product);
}

class _FTProductItemView extends State<FTProductItemView> {
  final Beer _product;

  _FTProductItemView(this._product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[_buildImageWithDiscountTag(), _buildCardBootom()],
      ),
    );
  }

  _buildImageWithDiscountTag() {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: Image.network(
            _product.imageUrl,
            fit: BoxFit.scaleDown,
            height: 140.0,
            width: 100.0,
          ),
        ),
        _product.isPromo
            ? Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/promo.png',
                  height: 30.0,
                ),
              )
            : Container(),
      ],
    );
  }

  _buildCardBootom() {
    return Container(
        padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Text(
          _product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w500),
        ));
  }
}
