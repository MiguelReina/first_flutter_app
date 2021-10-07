import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );
    final starHalf = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );
    final starEmpty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border_outlined,
        color: Color(0xfff2c611),
      ),
    );
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff56575a),
        ),
      ),
    );
    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, starHalf, starEmpty],
        )
      ],
    );

    return Column(
      children: [
        title_stars,
        description,
      ],
    );
  }
}
