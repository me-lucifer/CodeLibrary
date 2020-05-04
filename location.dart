import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

/*
Location is accurate within a distance of 3000m on iOS and 500m on Android
LocationAccuracy.lowest, 

Location is accurate within a distance of 1000m on iOS and 500m on Android
LocationAccuracy.low, 

Location is accurate within a distance of 100m on iOS and between 100m and
500m on Android
LocationAccuracy.medium, 

Location is accurate within a distance of 10m on iOS and between 0m and 100m on Android
LocationAccuracy.high

Location accuracy is optimized for navigation on iOS and matches the
[LocationAccuracy.best] on Android
LocationAccuracy.best
*/
