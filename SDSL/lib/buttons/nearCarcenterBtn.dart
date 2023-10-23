import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class nearCarcenterBtn {
  Future<void> searchNearCarcenter() async {
    final currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    if (currentPosition != null) {
      final latitude = currentPosition.latitude;
      final longitude = currentPosition.longitude;

      final query = Uri.encodeComponent("주변 정비소");

      final Uri _url = Uri.parse('https://map.naver.com/search2/search.naver?query=$query&sm=hty&style=v5');

      if (await canLaunch(_url.toString())) {
        await launch(_url.toString());
      } else {
        throw 'Could not launch $_url';
      }
    } else {
      throw 'Could not get current location';
    }
  }
}
