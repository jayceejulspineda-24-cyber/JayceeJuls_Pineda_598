import 'package:flutter/material.dart';
import 'package:modelhandling/homepage.dart';
import 'package:modelhandling/studentmodel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://qucfedswcjsgvqkdteie.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF1Y2ZlZHN3Y2pzZ3Zxa2R0ZWllIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQzODIwOTIsImV4cCI6MjA4OTk1ODA5Mn0.bFQbUPLRNaet0YhL2dZ-4_vmL15qJqf7bG2RhtHN4qs",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Homepage(),
    );
  }
}
