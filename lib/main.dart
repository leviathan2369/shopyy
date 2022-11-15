import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopyy/common/widgets/bottom_bar.dart';
import 'package:shopyy/constants/global_variables.dart';
import 'package:shopyy/features/admin/screens/admin_screen.dart';
import 'package:shopyy/features/auth/screens/auth_screen.dart';
import 'package:shopyy/features/auth/services/auth_services.dart';
import 'package:shopyy/providers/user_provider.dart';
import 'package:shopyy/router.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppy',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.lightGreenAccent)),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ?   const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),

    );
  }
}
