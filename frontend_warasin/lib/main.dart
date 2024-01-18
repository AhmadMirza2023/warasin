import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warasin/providers/auth_provider.dart';
import 'package:warasin/providers/konselor_provider.dart';
import 'package:warasin/screens/ai_screen.dart';
import 'package:warasin/screens/detail_konselor_screen.dart';
import 'package:warasin/screens/education_screen.dart';
import 'package:warasin/screens/feel_screen.dart';
import 'package:warasin/screens/fill_profile_screen.dart';
import 'package:warasin/screens/forget1_password.dart';
import 'package:warasin/screens/forget2_password.dart';
import 'package:warasin/screens/greeting_screen.dart';
import 'package:warasin/screens/home_screen.dart';
import 'package:warasin/screens/konselor_screen.dart';
import 'package:warasin/screens/login_screen.dart';
import 'package:warasin/screens/main_page.dart';
import 'package:warasin/screens/order_konselor.dart';
import 'package:warasin/screens/problem_screen.dart';
import 'package:warasin/screens/profile_screen.dart';
import 'package:warasin/screens/register_screen.dart';
import 'package:warasin/screens/splash1_screen.dart';
import 'package:warasin/screens/splash_screen.dart';
import 'package:warasin/screens/support_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => KonselorProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/splash1': (context) => Splash1Screen(),
          '/login': (context) => LoginScreen(),
          '/forget1': (context) => Forget1Password(),
          '/forget2': (context) => Forget2Password(),
          '/register': (context) => RegisterScreen(),
          '/greeting': (context) => GreetingScreen(),
          '/feel': (context) => FeelScreen(),
          '/problem': (context) => ProblemScreen(),
          '/support': (context) => SupportScreen(),
          '/fill-profile': (context) => FillProfileScreen(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomeScreen(),
          '/ai': (context) => AiScreen(),
          '/konselor': (context) => KonselorScreen(),
          '/detail-konselor': (context) {
            print('Accessing /detail-konselor route');
            return DetailKonselorScreen();
          },
          '/order-konselor': (context) => OrderKonselor(),
          '/education': (context) => EducationScreen(),
          '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
