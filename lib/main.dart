import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/theme.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/welcome/welcome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<User>(
          create: (_) => User(),
        )
      ],
      child: MaterialApp(
        title: 'Intel_Comm',
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: (context, myWidget) {
        //   // myWidget = DevicePreview.appBuilder(context, myWidget);
        //   myWidget = BotToastInit()(context, myWidget);
        //   return myWidget;
        // },
        // navigatorObservers: [BotToastNavigatorObserver()],
        // navigatorKey: navigatorKey,
        // theme: lightThemeDataCustom,
        darkTheme: darkTheme,
        theme: darkTheme,
        home: Welcome(),
      ),
    );
  }
}
