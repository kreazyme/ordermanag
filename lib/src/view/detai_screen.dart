// import 'package:flutter/material.dart';
// import 'package:nguyenminhdung/src/data/model/location/location.dart';

// class DetailScreen extends StatelessWidget {
//   final Location location;
//   const DetailScreen({Key? key, required this.location}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(children: [
//           Expanded(
//             flex: 2,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text("Title:"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Desc:"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("TimeStamp"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Lat"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Lng"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Addr"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("e"),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Zip"),
//                 SizedBox(
//                   height: 8,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 4,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(location.title!),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.desc!),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.timeStamp!),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.lat.toString()),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.lng.toString()),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.addr!.toString()),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.e!),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Text(location.zip!),
//                 const SizedBox(
//                   height: 8,
//                 ),
//               ],
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
