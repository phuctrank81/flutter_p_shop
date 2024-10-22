import 'package:flutter/material.dart';
import 'package:flutter_p_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_p_shop/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState(); // Add this line
}

class _AppState extends State<App> {  // Create the State class
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(       
      ),
    );
  }
}
