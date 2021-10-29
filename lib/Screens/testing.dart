// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: StaggeredGridView.count(
//           crossAxisCount: 12,
//           // crossAxisSpacing: 10,
//           mainAxisSpacing: 5,
//           staggeredTiles: const [
//             StaggeredTile.count(12, 8.5), // 1
//             StaggeredTile.count(4, 8), // 2
//             StaggeredTile.count(4, 8), // 2
//             StaggeredTile.count(4, 8), // 2
//             StaggeredTile.count(12, 3.7), // 3
//             StaggeredTile.count(1, 8.2), // 4
//             StaggeredTile.count(5, 8.2), // 4
//             StaggeredTile.count(5, 8.2), // 4
//             StaggeredTile.count(1, 8.2), // 4
//             StaggeredTile.count(1, 8.2), // 5
//             StaggeredTile.count(10, 8.2), // 5
//             StaggeredTile.count(1, 8.2), // 5
//             StaggeredTile.count(1, 8.2), // 6
//             StaggeredTile.count(10, 8.2), // 6
//             StaggeredTile.count(1, 8.2), // 6
//             StaggeredTile.count(1, 8.2), // 7
//             StaggeredTile.count(5, 8.2), // 7
//             StaggeredTile.count(5, 8.2), // 7
//             StaggeredTile.count(1, 8.2), // 7
//             StaggeredTile.count(3, 8.2), // 8
//             StaggeredTile.count(6, 8.2), // 8
//             StaggeredTile.count(3, 8.2), // 8
//             StaggeredTile.count(4, 8.2), // 9
//             StaggeredTile.count(4, 8.2), // 9
//             StaggeredTile.count(4, 8.2), // 9
//             StaggeredTile.count(1, 8.2), // 10
//             StaggeredTile.count(10, 8.2), // 10
//             StaggeredTile.count(1, 8.2), // 10
//             StaggeredTile.count(4, 8.2), // 11
//             StaggeredTile.count(4, 8.2), // 11
//             StaggeredTile.count(4, 8.2), // 11
//             StaggeredTile.count(3, 8.2), // 12
//             StaggeredTile.count(6, 8.2), // 12
//             StaggeredTile.count(3, 8.2), // 12
//             StaggeredTile.count(1, 8.2), // 13
//             StaggeredTile.count(10, 8.2), // 13
//             StaggeredTile.count(1, 8.2), // 13
//           ],
//           children: [
//             //-------------card1-----------
//             ImageTile1(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             //-------------card2-----------
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             //-------------text 3-----------
//             textTile(
//               text1: 'Fusion',
//               text2:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
//             ),
//             //-------------card4-----------
//             const SizedBox(),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card5-----------
//             const SizedBox(),
//             ImageTile3(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card6-----------
//             const SizedBox(),
//             ImageTile3(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card7-----------
//             const SizedBox(),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card8-----------
//             const SizedBox(),
//             ImageTile1(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card9-----------
//             textTile(
//               text1: 'Lorem ipsum dollar sit',
//               text2:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             //-------------card 10-----------
//             const SizedBox(),
//             ImageTile3(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card 11-----------
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             ImageTile2(
//               image: 'assets/images/2.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             textTile(
//               text1: 'Lorem ipsum dollar sit',
//               text2:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
//             ),
//             //-------------card 12-----------
//             const SizedBox(),
//             ImageTile1(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//             //-------------card 13-----------
//             const SizedBox(),
//             ImageTile1(
//               image: 'assets/images/1.png',
//               text1: 'ROZANA SUITS',
//               text2: 'PKR 4,990.00',
//             ),
//             const SizedBox(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class textTile extends StatelessWidget {
//   textTile({this.text1, this.text2});
//   String? text1;
//   String? text2;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             text1!,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             text2!,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageTile1 extends StatelessWidget {
//   ImageTile1({this.image, this.text1, this.text2});
//   String? image;
//   String? text1;
//   String? text2;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: 260,
//                 width: double.infinity,
//                 child: Image.asset(
//                   image!,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(text1!, style: const TextStyle(fontSize: 12)),
//               Text(
//                 text2!,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageTile2 extends StatelessWidget {
//   ImageTile2({this.image, this.text1, this.text2});
//   String? image;
//   String? text1;
//   String? text2;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 5),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: 250,
//                 width: double.infinity,
//                 child: Image.asset(
//                   image!,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Text(text1!, style: const TextStyle(fontSize: 12)),
//               Text(
//                 text2!,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageTile3 extends StatelessWidget {
//   ImageTile3({this.image, this.text1, this.text2});
//   String? image;
//   String? text1;
//   String? text2;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: 250,
//                 width: double.infinity,
//                 child: Image.asset(
//                   image!,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Text(text1!, style: const TextStyle(fontSize: 12)),
//               Text(
//                 text2!,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
