# Get Started

The used framework for this client is [Flutter](https://flutter.dev). In order to run the app locally or on your mobile phone (Android, IOS), please follow the Get Started Guide:

**[Get Started with Flutter](https://flutter.dev/docs/get-started/install)**

Create a [Socket Endpoint](https://docs.cognigy.com/docs/deploy-a-socket-endpoint) in your Cognigy.AI project. The `Endpoint URL` and `URLToken` need to be inserted into the [Configuration File](../lib/chat_widget/cognigy/config.dart). Inside Cognigy, please use the **Webchat** Tab in the SAY Node for template content messages, such as images or quick replies.

## Add To Your Application

There are two steps required to add the chat widget to your own Flutter mobile application:

1. Copy the [Chat Widget Code](../lib/chat_widget/) to your Flutter project
2. Add the [Dependencies](../pubspec.yaml) to your **pubspec.yaml** file
3. Run `pub get` to install everything
