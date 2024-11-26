import 'dart:convert';

import 'package:demo/utils/constant/app_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HelpersUtils {
  HelpersUtils._();
  static T? jsonToObject<T>(
      String jsonString, T Function(Map<String, dynamic>) fromJson) {
    try {
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      return fromJson(jsonData);
    } catch (e) {
      print("Error converting JSON to object: $e");
      return null;
    }
  }

  static Future<void> removeSplashScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  static void showErrorSnackbar(
      BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${title}: ${message}'),
        backgroundColor: AppColors.errorColor,
      ),
    );
  }

  static Response? handleApiResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 304:
        // Throw error ehre
        break;
      case 400:
        // Throw error ehre
        break;
      case 401:
        // Throw error ehre
        break;
      case 403:
        // Throw error ehre
        break;
      case 404:
        // Throw error ehre
        break;
      case 500:
        // Throw error ehre
        break;
      default:
        break;
    }
    return null;
  }
}
