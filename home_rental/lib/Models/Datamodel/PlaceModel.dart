import 'package:flutter/material.dart';

class PlaceModel {
  String title, details;
  int rent;
  String imagePath;
  List<String> photoCollections = [
    "asset/images/image1.jpg",
    "asset/images/image2.jpg",
    "asset/images/image3.jpg",
    "asset/images/image4.jpg",
    "asset/images/image5.jpg",
    "asset/images/image6.jpg",
    "asset/images/image7.jpg",
    "asset/images/image8.jpg",
    "asset/images/image9.jpg",
  ];
  PlaceModel({
    @required this.title,
    @required this.details,
    @required this.rent,
    @required this.imagePath,
  });
}

List<PlaceModel> placeCollection = [
  PlaceModel(
    title: "The Coach House",
    details: "4 College Court Holyoke, MA 01040",
    rent: 1500,
    imagePath: "asset/images/image1.jpg",
  ),
  PlaceModel(
    title: "Wheenwright Cottage",
    details: "221 Filmore St, Princetone, IA",
    rent: 1400,
    imagePath: "asset/images/image4.jpg",
  ),
  PlaceModel(
    title: "La Vie est Belle",
    details: "4 College Court Holyoke, MA 01040",
    rent: 1800,
    imagePath: "asset/images/image5.jpg",
  ),
  PlaceModel(
    title: "The Old Vicarage",
    details: "4 College Court Holyoke, MA 01040",
    rent: 1200,
    imagePath: "asset/images/image7.jpg",
  ),
];
