# Flutter Widget

This project implements a mobile chat widget to show how to connect your [Cognigy.AI](https://cognigy.com/) project to a Flutter app. Therefore, you can use the [Chat Widget](./lib/widget/../chat_widget/widgets/chat.dart) and add it to your own Flutter application.

**Example**:

<image src="./docs/1.png" width="50%">

## Install Application & Run Application

The used framework for this client is [Flutter](https://flutter.dev). In order to run the app locally or on your mobile phone (Android, IOS), please follow the Get Started Guide:

**[Get Started with Flutter](https://flutter.dev/docs/get-started/install)**

Create a [Socket Endpoint](https://docs.cognigy.com/docs/deploy-a-socket-endpoint) in your Cognigy.AI project. The `Endpoint URL` and `URLToken` need to be inserted into the [Configuration File](./lib/cognigy/config.dart). After that, the application will automatically connect to Cognigy; the status is displayed by a <span style="color: green">green</span> or <span style="color: red">red</span> button on the top-right corner of the screen.