import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:home_rental/Models/Datamodel/PlaceModel.dart';

class BestOffer extends StatelessWidget {
  final PlaceModel placeModel;
  BestOffer({this.placeModel});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12,
      ),
      child: Container(
        height: 220,
        width: 300,
        decoration: BoxDecoration(
          // color: Colors.blue,
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 5),
            ),
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(-3, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  height: 220,
                  width: 120,
                  fit: BoxFit.cover,
                  image: AssetImage(placeModel.imagePath),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      placeModel.title,
                      style: textTheme.headline6.apply(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      placeModel.details,
                      overflow: TextOverflow.fade,
                      style: textTheme.bodyText1.apply(
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    FlutterIcons.bed_faw,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    FlutterIcons.bath_faw,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    FlutterIcons.fridge_outline_mco,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "\$${placeModel.rent.toString()} / ",
                        style: textTheme.headline6.apply(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Mo',
                            style: DefaultTextStyle.of(context).style.apply(
                                  color: Colors.black,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
