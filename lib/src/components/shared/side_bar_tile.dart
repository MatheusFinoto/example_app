// import 'package:flutter/material.dart';
// import '../utils/theme.dart';

// class SideBarTile extends StatelessWidget {
//   const SideBarTile(
//       {Key? key,
//       required this.title,
//       required this.selected,
//       required this.icon,
//       required this.onTap})
//       : super(key: key);

//   final String title;
//   final bool selected;
//   final IconData icon;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: selected
//               ? Color(formatColor(path: darkColors["allThentic"]["green"][800]))
//                   .withOpacity(0.4)
//               : null,
//           borderRadius: BorderRadius.circular(10)),
//       margin: const EdgeInsets.only(right: 12, left: 12),
//       child: ListTile(
//         dense: false,
//         hoverColor:
//             Color(formatColor(path: darkColors["allThentic"]["green"][800]))
//                 .withOpacity(0.6),
//         leading: Icon(icon,
//             color: selected
//                 ? Color(
//                     formatColor(path: darkColors["allThentic"]["green"][800]))
//                 : Theme.of(context).iconTheme.color),
//         title: Text(
//           title,
//           style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: selected
//                   ? Color(
//                       formatColor(path: darkColors["allThentic"]["green"][800]))
//                   : Theme.of(context).brightness == Brightness.dark
//                       ? Colors.white70
//                       : Colors.black45),
//         ),
//         onTap: onTap,
//       ),
//     );
//   }
// }
