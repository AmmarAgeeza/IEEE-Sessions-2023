import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../locale/app_local.dart';
import '../services/service_locator.dart';
import '../widgets/dialogs/confirmation_dialog.dart';
import 'app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:ui' as ui;

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../bloc/global_cubit/global_cubit.dart';
import 'app_enums.dart';
import 'app_strings.dart';

class Commons {
  static void showErrorDialog(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(message, style: Theme.of(context).textTheme.bodyLarge
                  // const TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 16,
                  //     fontFamily: AppStrings.fontName),
                  ),
              actions: <Widget>[
                TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    //  TextButton.styleFrom(
                    //     foregroundColor: Colors.black,
                    //     textStyle: const TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontFamily: AppStrings.fontName,
                    //         fontSize: 14)),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(AppLocalizations.of(context)!.translate('ok'))),
              ],
            ));
  }

  static void showToast(
      {required String message, Color? color, ToastGravity? gravity}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity ?? ToastGravity.BOTTOM,
      backgroundColor: color ?? AppColors.primary,
    );
  }

  static Future<void> showLogoutDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) => ConfirmationDialog(
            alertMsg: AppLocalizations.of(context)!.translate('want_to_logout'),
            onTapConfirm: () {}));
  }

  static Future<void> openUrl(String urlLink) async {
    final Uri url = Uri.parse(urlLink);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  static dynamic decodeJson(Response<dynamic> response) {
    var responseJson = jsonDecode(response.data.toString());
    return responseJson;
  }
}

CameraPosition appInitialCameraPosition = const CameraPosition(
  target: LatLng(26.8206, 30.8025),
  zoom: 5,
);

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

void printResponse(String text) {
  if (kDebugMode) {
    print('\x1B[33m$text\x1B[0m');
  }
}

void printError(String text) {
  if (kDebugMode) {
    print('\x1B[31m$text\x1B[0m');
  }
}

void printTest(String text) {
  if (kDebugMode) {
    print('\x1B[32m$text\x1B[0m');
  }
}

void showToastMsg({required String msg, required ToastStates toastState}) {
  // FToast().showToast(
  //   toastDuration: const Duration(seconds: 2),
  //   gravity: ToastGravity.BOTTOM,
  //   child:Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  //       decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(25.0),
  //       color: chooseToastColor(state: toastState),
  //       ),child: DefaultText(text: msg) ),
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: chooseToastColor(state: toastState),
    textColor: Colors.black,
    fontSize: 16.0,
  );
}

Color chooseToastColor({required ToastStates state}) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = AppColors.primary;
      break;
    case ToastStates.warning:
      color = Colors.white;
      break;
    case ToastStates.error:
      color = Colors.red;
      break;
  }
  return color;
}

Future<Placemark> convertPositionToAddress({
  required double lat,
  required double lon,
}) async {
  List<Placemark> placeMarks =
      await placemarkFromCoordinates(lat, lon, localeIdentifier: 'ar');
  Placemark place = placeMarks[0];
  printTest('$lat,$lon');
  printTest(place.toString());
  // return '${place.country} ${place.locality}  ${place.subLocality}';
 return place;
}

Future<Position> locationPermission() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    printError('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      printError('Location permissions are denied');

      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    printError(
        'Location permissions are permanently denied, we cannot request permissions.');
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best);
  printTest(position.longitude.toString());
  printTest(position.latitude.toString());
  printTest(position.toString());

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return position;
}

Future<Uint8List> getBytesFromAsset(String path, double width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width.toInt());
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

Future multipartConvertImage({
  required XFile image,
}) async {
  printError('Errorrrrrrr');
  return MultipartFile.fromFileSync(image.path,
      filename: image.path.split('/').last);
}

Future<XFile?> pickImage(ImageSource source) async {
  XFile? image = await ImagePicker().pickImage(
      source: source, maxHeight: 1024, maxWidth: 1024, imageQuality: 50);
  if (image != null) {
    return image;
  } else {
    return null;
  }
}

Color darkOrLightColor(Color lightColor, Color darkColor) {
  return sl<GlobalCubit>().isLightTheme ? lightColor : darkColor;
}

void navigateTo({
  required String screenRoute,
  required BuildContext context,
  dynamic arg,
}) {
  Navigator.pushNamed(context, screenRoute, arguments: arg);
}

void navigateAndFinish({
  required String screenRoute,
  required BuildContext context,
  dynamic arg,
}) {
  Navigator.pushNamedAndRemoveUntil(context, screenRoute, (route) => false,
      arguments: arg);
}

String handleErrorMesage(String error) {
  switch (error) {
    case 'invalid login information':
      return AppStrings.loginFailed;
    case 'validationError':
      return AppStrings.loginFailed;
    case "User not found\"":
      return AppStrings.loginFailed;
    case "ReferenceError: next is not defined":
      return AppStrings.loginFailed;
    default:
      return "default error";
  }
}
