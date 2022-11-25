import 'package:fluchat/constants/routes.dart';
import 'package:fluchat/pages/calls_page.dart';
import 'package:fluchat/pages/contacts_page.dart';
import 'package:fluchat/pages/messages_page.dart';
import 'package:fluchat/pages/notifications_page.dart';
import 'package:fluchat/screens/home_screen.dart';
import 'package:fluchat/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: "FluChat",
      routerConfig: _router,
      // home: const HomeScreen(), //child appbar
      // routes: {
      //   contactsRoute: (context) => const ContactsPage(),
      //   messagesRoute: (context) => const MessagesPage(),
      //   callsRoute: (context) => const CallsPage(),
      //   notificationsRoute: (context) => const NotificationsPage(),
      //   // loginRoute: (context) => const LoginView(),
      //   // registerRoute: (context) => const RegisterView(),
      //   // verifyEmailRoute: (context) => const VerifyEmailView(),
      // }
    );

/*usage->   TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(registerRoute, (route) => false);
            }, 
            
*/
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/messages",
      builder: (context, state) => const MessagesPage(),
    )
  ],
);
