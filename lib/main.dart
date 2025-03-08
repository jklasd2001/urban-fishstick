import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL', fallback: ''),
    anonKey: dotenv.get('SUPABASE_ANON_KEY', fallback: ''),
  );

  print(dotenv.get('SUPABASE_URL', fallback: ''));
  print(dotenv.get('SUPABASE_ANON_KEY', fallback: ''));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱제dsssd', textAlign: TextAlign.center),
          centerTitle: false,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          width: 99999,
          height: 99999,
          color: Colors.greenAccent,
          // foregroundDecoration: BoxDecoration(color: Colors.green),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone, size: 32),
                Icon(Icons.message, size: 32),
                Icon(Icons.contact_page, size: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
