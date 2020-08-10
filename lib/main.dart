import 'package:cognigy_flutterchat/chat_widget/theme.dart';
import 'package:cognigy_flutterchat/chat_widget/widgets/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Import required files for Cognigy.AI connection
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:cognigy_flutterchat/chat_widget/cognigy/app_initializer.dart';
import 'package:cognigy_flutterchat/chat_widget/cognigy/dependency_injection.dart';

// Create Injector
Injector injector;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

NotificationAppLaunchDetails notificationAppLaunchDetails;

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
      title: 'Cognigy Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Chat(),
    );
  }
}
