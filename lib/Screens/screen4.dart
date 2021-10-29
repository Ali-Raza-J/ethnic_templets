import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:video_player/video_player.dart';

class Screen4 extends StatefulWidget {
  @override
  State<Screen4> createState() => _Screen4State();
}

@override
class _Screen4State extends State<Screen4> {
  MyList4? model;
  VideoPlayerController? _controller1;
  VideoPlayerController? _controller2;
  VideoPlayerController? _controller3;
  VideoPlayerController? _controller4;
  VideoPlayerController? _controller5;
  VideoPlayerController? _controller6;
  VideoPlayerController? _controller7;
  // Future<void>? _futurecontroller;
  @override
  void initState() {
    _controller1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    _controller2 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    _controller3 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    _controller4 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    _controller5 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller6 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    _controller7 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    setState(() {
      _controller1!.dispose();
      _controller2!.dispose();
      _controller3!.dispose();
      _controller4!.dispose();
      _controller5!.dispose();
      _controller6!.dispose();
      _controller7!.dispose();
    });

    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList4.length,
          crossAxisCount: 12,
          // crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) => index % 21 == 0
              ? const StaggeredTile.count(12, 8.2) // 1
              : index % 21 == 2 ||
                      (index + 1) % 21 == 2 ||
                      (index - 1) % 21 == 2 ||
                      index % 21 == 13 ||
                      (index + 1) % 21 == 13 ||
                      (index - 1) % 21 == 13 ||
                      index % 21 == 17 ||
                      (index + 1) % 21 == 17 ||
                      (index - 1) % 21 == 17
                  ? const StaggeredTile.count(4, 8) // 2 , 9 , 11
                  : index == 4
                      ? const StaggeredTile.count(12, 3.7) // 3
                      : index % 21 == 4 && index != 0
                          ? const StaggeredTile.count(12, 0.5)
                          : index % 21 == 5 ||
                                  (index - 1) % 21 == 5 ||
                                  index % 21 == 9 ||
                                  (index - 1) % 21 == 9
                              ? const StaggeredTile.count(6, 8.2) // 4
                              : index % 21 == 7 ||
                                      (index - 1) % 21 == 7 ||
                                      index % 21 == 15 ||
                                      (index - 1) % 21 == 20
                                  ? const StaggeredTile.count(12, 8.2) // 5
                                  // : index % 21 == 11 || index % 21 == 19
                                  : const StaggeredTile.count(12, 8.2), // 8
          itemBuilder: (context, index) {
            model = myList4[index];
            return index % 21 == 0
                ? ImageTile1(
                    image: model!.image, //'assets/images/1.png',
                    text1: model!.text1, //'ROZANA SUITS',
                    text2: model!.text2, //'PKR 4,990.00',
                  ) // 1
                : index % 21 == 2 ||
                        (index + 1) % 21 == 2 ||
                        (index - 1) % 21 == 2 ||
                        index % 21 == 13 ||
                        // (index + 1) % 21 == 13 ||
                        (index - 1) % 21 == 13 ||
                        index % 21 == 17 ||
                        (index + 1) % 21 == 17
                    ? ImageTile2(
                        image: model!.image, //'assets/images/2.png',
                        text1: model!.text1, //'ROZANA SUITS',
                        text2: model!.text2, //'PKR 4,990.00',
                      ) // 2 , 9 , 11
                    : (index + 1) % 21 == 13 || (index - 1) % 21 == 17
                        ? textTile(
                            text1: model!.text1, //'Lorem ipsum dollar sit',
                            text2: model!
                                .text2, //'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          )
                        : index == 4
                            ? textTile(
                                text1: model!.text1, //'Fusion',
                                text2: model!
                                    .text2, //'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
                              ) // 3
                            : index % 21 == 4 && index != 0
                                ? const SizedBox(height: 10)
                                : index % 21 == 5 || index % 21 == 9
                                    ? ImageTile3(
                                        image: model!
                                            .image, //'assets/images/2.png',
                                        text1: model!.text1, //'ROZANA SUITS',
                                        text2: model!.text2, //'PKR 4,990.00',
                                      ) // 4
                                    : (index - 1) % 21 == 5 ||
                                            (index - 1) % 21 == 9
                                        ? ImageTile4(
                                            image: model!
                                                .image, //'assets/images/2.png',
                                            text1:
                                                model!.text1, //'ROZANA SUITS',
                                            text2:
                                                model!.text2, //'PKR 4,990.00',
                                          )
                                        : index % 21 == 7 ||
                                                (index - 1) % 21 == 7 ||
                                                index % 21 == 15 ||
                                                (index) % 21 == 20
                                            ? ImageTile5(
                                                image: model!
                                                    .image, //'assets/images/1.png',
                                                text1: model!
                                                    .text1, //'ROZANA SUITS',
                                                text2: model!
                                                    .text2, //'PKR 4,990.00',
                                              ) // 5
                                            // : index % 21 == 11 || index % 21 == 19
                                            : ImageTile6(
                                                image: model!
                                                    .image, //'assets/images/1.png',
                                                text1: model!
                                                    .text1, //'ROZANA SUITS',
                                                text2: model!
                                                    .text2, //'PKR 4,990.00',
                                              ); // 8
            // :
          },
          // staggeredTiles: const [
          //   StaggeredTile.count(12, 8.5), // 1
          //   StaggeredTile.count(4, 8), // 2
          //   StaggeredTile.count(4, 8), // 2
          //   StaggeredTile.count(4, 8), // 2
          //   StaggeredTile.count(12, 3.7), // 3
          //   StaggeredTile.count(1, 8.2), // 4
          //   StaggeredTile.count(5, 8.2), // 4
          //   StaggeredTile.count(5, 8.2), // 4
          //   StaggeredTile.count(1, 8.2), // 4
          //   StaggeredTile.count(1, 8.2), // 5
          //   StaggeredTile.count(10, 8.2), // 5
          //   StaggeredTile.count(1, 8.2), // 5
          //   StaggeredTile.count(1, 8.2), // 6
          //   StaggeredTile.count(10, 8.2), // 6
          //   StaggeredTile.count(1, 8.2), // 6
          //   StaggeredTile.count(1, 8.2), // 7
          //   StaggeredTile.count(5, 8.2), // 7
          //   StaggeredTile.count(5, 8.2), // 7
          //   StaggeredTile.count(1, 8.2), // 7
          //   StaggeredTile.count(3, 8.2), // 8
          //   StaggeredTile.count(6, 8.2), // 8
          //   StaggeredTile.count(3, 8.2), // 8
          //   StaggeredTile.count(4, 8.2), // 9
          //   StaggeredTile.count(4, 8.2), // 9
          //   StaggeredTile.count(4, 8.2), // 9
          //   StaggeredTile.count(1, 8.2), // 10
          //   StaggeredTile.count(10, 8.2), // 10
          //   StaggeredTile.count(1, 8.2), // 10
          //   StaggeredTile.count(4, 8.2), // 11
          //   StaggeredTile.count(4, 8.2), // 11
          //   StaggeredTile.count(4, 8.2), // 11
          //   StaggeredTile.count(3, 8.2), // 12
          //   StaggeredTile.count(6, 8.2), // 12
          //   StaggeredTile.count(3, 8.2), // 12
          //   StaggeredTile.count(1, 8.2), // 13
          //   StaggeredTile.count(10, 8.2), // 13
          //   StaggeredTile.count(1, 8.2), // 13
          // ],
          // children: [
          //   //-------------card1-----------
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card2-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller1,
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller2,
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller3,
          //   ),
          //   //-------------text 3-----------
          //   textTile(
          //     text1: 'Fusion',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
          //   ),
          //   //-------------card4-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile3(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card5-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card6-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card7-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile3(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card8-----------
          //   const SizedBox(),
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card9-----------
          //   textTile(
          //     text1: 'Lorem ipsum dollar sit',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller4,
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller5,
          //   ),
          //   //-------------card 10-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card 11-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller6,
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //     controller: _controller7,
          //   ),
          //   textTile(
          //     text1: 'Lorem ipsum dollar sit',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          //   ),
          //   //-------------card 12-----------
          //   const SizedBox(),
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card 13-----------
          //   const SizedBox(),
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          // ],
        ),
      ),
    );
  }

  // Container ImageTile2(
  //     {String? image,
  //     String? text1,
  //     String? text2,
  //     VideoPlayerController? controller}) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 5),
  //     // child: _controller1!.value.isInitialized
  //     //         ? VideoPlayer(_controller1!)
  //     //         : Container(),

  //     child: Stack(
  //       alignment: Alignment.center,
  //       children: [
  //         Column(
  //           children: [
  //             // FutureBuilder(
  //             //     future: _futurecontroller,
  //             //     builder: (context, AsyncSnapshot) {
  //             controller!.value.isInitialized
  //                 ? SizedBox(
  //                     height: 250,
  //                     width: double.infinity,
  //                     child: VideoPlayer(controller),
  //                   )
  //                 :
  //                 //const CircularProgressIndicator();
  //                 const SizedBox(
  //                     height: 250,
  //                     width: double.infinity,
  //                     child: Center(child: CircularProgressIndicator()),
  //                     //Image.asset(
  //                     //   widget.image!,
  //                     //   fit: BoxFit.fill,
  //                     // ),
  //                   ),
  //             // }),
  //             const SizedBox(height: 12),
  //             Text(text1!, style: const TextStyle(fontSize: 12)),
  //             Text(
  //               text2!,
  //               style: const TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 12,
  //               ),
  //             ),
  //           ],
  //         ),
  //         if (controller.value.isInitialized)
  //           ElevatedButton.icon(
  //             style: ButtonStyle(
  //                 backgroundColor:
  //                     MaterialStateProperty.all<Color>(Colors.white),
  //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //                   RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(100),
  //                   ),
  //                 ),
  //                 padding: MaterialStateProperty.all<EdgeInsets>(
  //                   const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
  //                 )),
  //             // height: 40,
  //             // width: 40,
  //             // decoration: const BoxDecoration(
  //             //   shape: BoxShape.circle,
  //             //   color: Colors.white,
  //             // ),
  //             label: const Text(''),
  //             onPressed: () {
  //               setState(() {
  //                 if (controller.value.isPlaying) {
  //                   controller.pause();
  //                 } else {
  //                   controller.play();
  //                 }
  //               });
  //             },
  //             icon: Icon(
  //               controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
  //               color: Colors.grey,
  //             ),
  //           ),
  //         // Material(
  //         //   color: Colors.transparent,
  //         //   child: InkWell(
  //         //     onTap: () {},
  //         //   ),
  //         // ),
  //       ],
  //     ),
    // );
  // }
}

class textTile extends StatelessWidget {
  textTile({this.text1, this.text2});
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 5),
          Text(
            text2!,
          ),
        ],
      ),
    );
  }
}

class ImageTile1 extends StatelessWidget {
  ImageTile1({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Image.asset(
                  // 'assets/images/2.png',
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTile2 extends StatelessWidget {
  ImageTile2({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 12),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTile3 extends StatelessWidget {
  ImageTile3({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 0, 5, 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 12),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

//-------------------------------------
class ImageTile4 extends StatelessWidget {
  ImageTile4({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 40, 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTile5 extends StatelessWidget {
  ImageTile5({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 12),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTile6 extends StatelessWidget {
  ImageTile6({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 95),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 275,
                width: double.infinity,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 12),
              Text(text1!, style: const TextStyle(fontSize: 12)),
              Text(
                text2!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class MyList4 {
  String? image;
  String? text1;
  String? text2;
  MyList4({this.image, this.text1, this.text2});
}

List<MyList4> myList4 = [
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList4(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList4(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList4(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList4(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
];
