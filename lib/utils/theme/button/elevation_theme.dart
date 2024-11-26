import 'package:flutter/material.dart';
import 'package:demo/utils/constant/app_colors.dart';

class ElevationTheme {
  ElevationTheme._();

  // Light Theme ElevatedButton
  static final ElevatedButtonThemeData elevationButtonLight =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2, // Light theme elevation
      backgroundColor: AppColors.primaryColor, // Button background
      foregroundColor: AppColors.backgroundLight, // Button text color
      shadowColor: AppColors.primaryLight, // Light shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );

  // Dark Theme ElevatedButton
  static final ElevatedButtonThemeData elevationButtonDark =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 4, // Dark theme elevation (slightly higher for contrast)
      backgroundColor: AppColors.primaryDark, // Button background
      foregroundColor: AppColors.backgroundDark, // Button text color
      shadowColor: AppColors.neutralBlack.withOpacity(0.5), // Dark shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );
}
