import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position?> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      return position;
    } catch (e) {
      print("Error getting location: $e");
    }
  }
}