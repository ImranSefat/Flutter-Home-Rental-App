import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:home_rental/Models/Datamodel/PlaceModel.dart';
import 'package:home_rental/Models/constants.dart';

class PlaceDetails extends StatelessWidget {
  final PlaceModel placeModel;
  PlaceDetails({@required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: placeModel.title,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(placeModel.imagePath),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        placeModel.title,
                        style: textTheme.headline4.apply(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$${placeModel.rent}",
                              style: textTheme.headline5,
                            ),
                            Text(
                              "/ Mo",
                              style: textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.bed_faw,
                              size: 16,
                            ),
                            Text("5")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.bath_faw,
                              size: 16,
                            ),
                            Text("3")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.fridge_outline_mco,
                              size: 16,
                            ),
                            Text("2")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            width: 65,
                            fit: BoxFit.cover,
                            image: AssetImage('asset/images/face.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Owner",
                              style: textTheme.caption,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Imran Sefat",
                              style: textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              FlutterIcons.comment_dots_faw5s,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "About",
                  style: textTheme.headline5,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: textTheme.subtitle1.apply(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Photos",
                  style: textTheme.headline5,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: placeModel.photoCollections.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            height: 220,
                            width: 120,
                            fit: BoxFit.cover,
                            image:
                                AssetImage(placeModel.photoCollections[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
