import 'package:beegains/controller/login_provider.dart';
import 'package:beegains/view/enquirylist_screen.dart';
import 'package:beegains/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => LoginProvider(),)

      ],
      child:  MaterialApp(
          title: 'Beegains Flutter Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
          
          '/login': (context) => const LoginScreen(),
          
          
        },
          home: const LoginScreen(),
      )
      );
    
  }
}

