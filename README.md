# Flutter Client

This project implements a demo mobile application to show how to connect your [Cognigy.AI](https://cognigy.com/) project to a Flutter app.


## Install Application & Run Application

The used framework for this client is [Flutter](https://flutter.dev). In order to run the app locally or on your mobile phone (Android, IOS), please follow the Get Started Guide:

**[Get Started with Flutter](https://flutter.dev/docs/get-started/install)**

Create a [Socket Endpoint](https://docs.cognigy.com/docs/deploy-a-socket-endpoint) in your Cognigy.AI project. The `Endpoint URL` and `URLToken` need to be inserted into the [Configuration File](./lib/cognigy/config.dart). After that, the application will automatically connect to Cognigy; the status is displayed by a <span style="color: green">green</span> or <span style="color: red">red</span> button on the top-right corner of the screen.

## Enable Push Notifications 

This applications uses the [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications) package to provide push notifications on IOS and Android devices. Please follow the linked tutorial and take a look at the [Example Application](https://github.com/MaikuB/flutter_local_notifications/blob/master/flutter_local_notifications/example/lib/main.dart) to get familiar with this solution.

### Send Notifications

In order to send notifications which should be displayed to the user, use the [Cognigy Inject API](https://docs.cognigy.com/reference#inject). When you send a mesage, the Flow will be executed again with the sent text input. If the app is not in the foreground of the user's device, it will show a push notification to let him know that a new message arrived in the chat.