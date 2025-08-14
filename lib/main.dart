import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hesam/design/widgets/footer/desktop_footer.dart';
import 'package:hesam/state/footer_state.dart';
import 'core/constants/app_color.dart';
import 'core/constants/screen_size.dart';
import 'design/widgets/content/content_widget.dart';
import 'design/window/windows_box.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ms_sans'
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(

        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 600, name: MOBILE),
          const Breakpoint(start: 601, end: double.infinity, name: DESKTOP),
         // const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          ScreenSize.widthSize = constraints.maxWidth;
          ScreenSize.heightSize = constraints.maxHeight;
          print("Screen Size: ${ScreenSize.widthSize} x ${ScreenSize.heightSize}");
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => FooterState()),
            ],
            child: const HomePage(),
          );
        },
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
                ContentWidget()
              ],
            ),
          ),

           DesktopFooter()
        ],
      )
    );
  }
}

