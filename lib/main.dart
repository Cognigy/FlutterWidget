import 'package:cognigy_flutterchat/chat_widget/theme.dart';
import 'package:cognigy_flutterchat/chat_widget/widgets/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Import required files for Cognigy.AI connection
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:cognigy_flutterchat/chat_widget/cognigy/app_initializer.dart';
import 'package:cognigy_flutterchat/chat_widget/cognigy/dependency_injection.dart';

// Create Injector
Injector injector;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DependencyInjection().initialise(Injector.getInjector());
  injector = Injector.getInjector();
  await AppInitializer().initialise(injector);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cognigy.AI',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(5.0), // here the desired height
            child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                brightness: Brightness.light)),
        // appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        body: Chat(),
      ),
    );
  }
}
