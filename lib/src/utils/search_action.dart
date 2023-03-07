// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:nguyenminhdung/src/data/model/location/location.dart';
// import 'package:nguyenminhdung/src/view/detai_screen.dart';
// import 'package:nguyenminhdung/src/widget/data_record.dart';

// class SearchAction extends SearchDelegate {
//   final List<Location>? listData;

//   SearchAction({this.listData});
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       )
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return BackButton(
//       onPressed: (() {
//         Navigator.pop(context);
//       }),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     log("here");
//     log(query);
//     log(listData.toString());
//     final listQuery = listData!
//         .where((e) => e.title!.toLowerCase().contains(query.toLowerCase()))
//         .toList();
//     log(listQuery.length.toString());
//     return ListView.separated(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       itemCount: listQuery.length,
//       itemBuilder: (context, index) {
//         final Location data = listQuery[index];
//         return DataRecord(
//           data: data,
//           onTapAction: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailScreen(location: data),
//             ),
//           ),
//         );
//       },
//       separatorBuilder: (context, index) {
//         return const SizedBox(
//           height: 8,
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return const SizedBox();
//   }
// }
