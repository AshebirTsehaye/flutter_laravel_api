import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/user_list_screen.dart';
import 'screens/login_screen.dart';
import 'providers/user_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MaterialApp(
        title: 'Flutter Laravel API',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
