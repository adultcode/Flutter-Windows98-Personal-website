import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hesam/design/widgets/footer/desktop_footer.dart';
import 'package:hesam/state/footer_state.dart';
import 'core/constants/app_color.dart';
import 'core/constants/screen_size.dart';
import 'core/data/state/data_provider.dart';
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
      title: 'Hesam Rasoulian - Flutter Developer',
      theme: ThemeData(
        fontFamily: 'gilory'
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(

        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 700, name: MOBILE),
          const Breakpoint(start: 701, end: double.infinity, name: DESKTOP),
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
              ChangeNotifierProvider(create: (context) => DataProvider()),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    /// start to parse json data file
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DataProvider>().load();

    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundGreen,
      body: Consumer<DataProvider>(
        builder: (context, value, child) {
          /// show loading
          if(value.isLoading) return Center(child: CircularProgressIndicator(),);
          /// show main content
          return Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      ContentWidget()
                    ],
                  ),
                ),
              ),

              DesktopFooter()
            ],
          );
        },
      )
    );
  }
}

