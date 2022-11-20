import 'package:url_launcher/url_launcher.dart';

class MapUtils{
  MapUtils._();

  static Future<void> openMap(
      String spot,
      //double Latitude,
     // double Longitude,
      )
      async{
    String googleMapUrl = "https://www.google.com/maps/search/?api=1&query=$spot";
    if (await canLaunch(googleMapUrl)) {
      await launch(googleMapUrl);
    } else {
      throw 'Could not open the map.';
    }
      }
}