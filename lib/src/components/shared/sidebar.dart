// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:get_it/get_it.dart';

// import '../stores/base_store.dart';
// import 'side_bar_tile.dart';

// class SideBar extends StatefulWidget {
//   const SideBar({Key? key}) : super(key: key);

//   @override
//   State<SideBar> createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> {
//   final BaseStore baseStore = GetIt.I<BaseStore>();

//   @override
//   Widget build(BuildContext context) {
//     return Observer(builder: (_) {
//       return AnimatedContainer(
//         margin: const EdgeInsets.all(16),
//         duration: const Duration(milliseconds: 300),
//         onEnd: () {
//           // if (baseStore.expand == true) {
//           //   baseStore.setShowContent(true);
//           // }
//         },
//         width: baseStore.expand ? 220 : 80,
//         decoration: BoxDecoration(
//             color: Theme.of(context).cardColor,
//             borderRadius: BorderRadius.circular(15)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 baseStore.showContent
//                     ? SizedBox(
//                         width: 160,
//                         child: Image.asset(
//                           'assets/allthenticLogo.webp',
//                           width: 160,
//                           fit: BoxFit.fitWidth,
//                         ))
//                     : Container(),
//                 baseStore.showContent ? const SizedBox(width: 8) : Container(),
//                 IconButton(
//                     splashRadius: 20,
//                     onPressed: () {
//                       baseStore.setExpand(!baseStore.expand);
//                       if (baseStore.expand == false) {
//                         baseStore.setShowContent(false);
//                       }
//                     },
//                     icon: baseStore.expand
//                         ? const Icon(Icons.close)
//                         : const Icon(Icons.menu)),
//               ],
//             ),
//             const SizedBox(height: 36),
//             Expanded(
//               child: ListView(
//                 children: [
//                   SideBarTile(
//                       title: baseStore.showContent ? 'DASHBOARD' : '',
//                       selected: baseStore.selectedPage == 0,
//                       icon: Icons.dashboard_outlined,
//                       onTap: () {
//                         if (baseStore.selectedPage != 0) {
//                           baseStore.setSelectedPage(0);
//                         }
//                       }),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   SideBarTile(
//                       title: baseStore.showContent ? 'ONBOARD' : '',
//                       selected: baseStore.selectedPage == 1,
//                       icon: Icons.library_books,
//                       onTap: () {
//                         if (baseStore.selectedPage != 1) {
//                           baseStore.setSelectedPage(1);
//                         }
//                       }),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   SideBarTile(
//                       title: baseStore.showContent ? 'HEALTH CHECK' : '',
//                       selected: baseStore.selectedPage == 2,
//                       icon: Icons.healing_outlined,
//                       onTap: () {
//                         if (baseStore.selectedPage != 2) {
//                           baseStore.setSelectedPage(2);
//                         }
//                       }),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   SideBarTile(
//                       title: baseStore.showContent ? 'ORIGINATION' : '',
//                       selected: baseStore.selectedPage == 3,
//                       icon: Icons.person_pin_circle_outlined,
//                       onTap: () {
//                         if (baseStore.selectedPage != 3) {
//                           baseStore.setSelectedPage(3);
//                         }
//                       }),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   // color: selected ? purple.withOpacity(0.3) : null,
//                   borderRadius: BorderRadius.circular(10)),
//               margin: const EdgeInsets.only(right: 12, left: 12),
//               child: ListTile(
//                 dense: false,
//                 title: Text(
//                   baseStore.showContent ? 'SAIR' : '',
//                   style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black45),
//                 ),
//                 trailing: const Icon(Icons.exit_to_app_outlined),
//                 onTap: () {},
//               ),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
