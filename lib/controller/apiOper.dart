import 'dart:convert';

import 'package:freewalls/model/photosModel.dart';
import 'package:http/http.dart' as http;

class ApiOperations {
  static List<PhotosModel> trendingWallpapers = [];
  static Future<List<PhotosModel>> getTrendingWallpapers() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "b6BYLoMO2lVu39TnQs0zlgUGQfZbVkAjt8MIll60ErtzWSCo0aGpeelf"
    }).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData['photos'];
      photos.forEach(
        (element) {
          trendingWallpapers.add(PhotosModel.fromAPI2App(element));
        },
      );
    });
    return trendingWallpapers;
  }
}
