import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Ensure you have this import for Google Fonts

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 48.0), // Full width, fixed height
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          backgroundColor: Theme.of(context).colorScheme.secondary, // Use your secondary color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith( // Using your titleLarge style
            fontFamily: Theme.of(context).textTheme.titleLarge!.fontFamily,
            color: Theme.of(context).colorScheme.surface, // Use your alternate color for text
            letterSpacing: 0.0,
          ),
        ),
      ),
    );
  }
}
