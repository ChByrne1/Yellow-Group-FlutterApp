import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';

// used to pass messages from event handler to the UI
final _messageStreamController = BehaviorSubject<RemoteMessage>();

//background message handling
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
    print('Message data: ${message.data}');
    print('Message notification: ${message.notification?.title}');
    print('Message notification: ${message.notification?.body}');
  }
}


Future<void> main() async {
  //initialize firebase and notifications system
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // request permission to display notifications
  final messaging = FirebaseMessaging.instance;

  final settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (kDebugMode) {
    print('Permission granted: ${settings.authorizationStatus}');
  }

  //requests a registration token for sending messages to users from api server.
  String? token = await messaging.getToken();

  if (kDebugMode) {
    print('Registration Token=$token');
  }

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (kDebugMode) {
      print('Handling a foreground message: ${message.messageId}');
      print('Message data: ${message.data}');
      print('Message notification: ${message.notification?.title}');
      print('Message notification: ${message.notification?.body}');
    }

    _messageStreamController.sink.add(message);
  });

  //background message redirect
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp());

  // subscribe to a topic.
  const topic = 'app_promotion';
  await messaging.subscribeToTopic(topic);

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return MaterialApp.router(
      routerConfig: routes,

      title: 'YellowGroup',
      theme: pageSetup,
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _lastMessage = "";

  _HomePageState() {
    _messageStreamController.listen((message) {
      setState(() {
        if (message.notification != null) {
          _lastMessage = 'Received a notification message:'
              '\nTitle=${message.notification?.title},'
              '\nBody=${message.notification?.body},'
              '\nData=${message.data}';
        } else {
          _lastMessage = 'Received a data message: ${message.data}';
        }
      });
    });
  }

    @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
        color: pageSetup.appBarTheme.backgroundColor,
        child:
        SafeArea(
          child: Scaffold(
            //extends the picture behind the bottom nav
            extendBody: true,
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/homePageBackground.jpg"), fit: BoxFit.fitHeight,),
                  ),
                ),
                Center(
                  child: Text('West Virginia University Parkersburg', style: pageSetup.textTheme.titleLarge),
                ),

                //this is where the news will go
                Positioned(
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder:  (context, index) {
                      return ExpansionTile(
                        title: Text(''),
                        subtitle: Text('Written by , Pub. /'),
                        children: [
                          Text(''),
                        ],
                      );
                    }
                ),
                ),

              ],
            ),
            bottomNavigationBar: YellowBottomNav(),
            drawer: YellowDrawerNav(),
          ),
        )
    );
  }
}
