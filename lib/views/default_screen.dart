import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:web_app/router/router.gr.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({Key? key}) : super(key: key);

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  void initState() {
    super.initState();
  }

  final routes = const [
    HomePageRoute(),
    AboutPageRoute(),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text('Nice App Title :)'),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.compact,
        selected: index,
        onChanged: (i) {
          final router =
              context.innerRouterOf<StackRouter>(DefaultScreenRoute.name);
          setState(() => index = i);
          router?.popAndPush(routes[i]);
        },
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: const Text('Home'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.help),
            title: const Text('About'),
          ),
        ],
        footerItems: [
          PaneItemSeparator(),
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            title: const Text('Sign Out'),
            onTap: () {},
          ),
        ],
      ),
      content: const AutoRouter(),
    );
  }
}

// class AppDrawer extends StatelessWidget {
//   const AppDrawer({Key? key, required this.scaffoldKey}) : super(key: key);
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   @override
//   Widget build(BuildContext context) {
//     final router = context.innerRouterOf<StackRouter>(DefaultScreenRoute.name);
//     return Drawer(
//       child: ListView(
//         children: [
//           ListTile(
//             title: Row(
//               children: const [
//                 Icon(Icons.home),
//                 Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Text("Home"),
//                 )
//               ],
//             ),
//             onTap: () {
//               scaffoldKey.currentState!.openEndDrawer();
//               router?.popAndPush(const HomePageRoute());
//             },
//           ),
//           ListTile(
//             title: Row(
//               children: const [
//                 Icon(Icons.help),
//                 Padding(
//                   padding: EdgeInsets.only(left: 10.0),
//                   child: Text("About"),
//                 )
//               ],
//             ),
//             onTap: () {
//               scaffoldKey.currentState!.openEndDrawer();

//               router?.popAndPush(const AboutPageRoute());
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
