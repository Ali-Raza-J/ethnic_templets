import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen7 extends StatelessWidget {
  MyList7? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList8.length,
          crossAxisCount: 30,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) => index % 23 == 0
              ? const StaggeredTile.count(30, 19) // 1
              : index % 23 == 1 ||
                      index % 23 == 2 ||
                      index % 23 == 3 ||
                      index % 23 == 4 ||
                      index % 23 == 5
                  ? const StaggeredTile.count(6, 16)
                  : index % 23 == 15 ||
                          (index + 1) % 23 == 15 ||
                          (index - 1) % 23 == 15 ||
                          index % 23 == 19 ||
                          (index + 1) % 23 == 19 ||
                          (index - 1) % 23 == 19
                      ? const StaggeredTile.count(10, 14) // 2 , 9 , 11
                      : index == 6
                          ? const StaggeredTile.count(30, 6) // 3
                          : index % 23 == 6 && index != 6
                              ? const StaggeredTile.count(30, 1)
                              : index % 23 == 7 ||
                                      (index - 1) % 23 == 7 ||
                                      index % 23 == 11 ||
                                      (index - 1) % 23 == 11
                                  ? const StaggeredTile.count(15, 19) // 4
                                  // : index % 23 == 9 ||
                                  //         (index - 1) % 23 == 9 ||
                                  //         index % 23 == 15 ||
                                  //         (index - 1) % 23 == 20
                                  //     ? const StaggeredTile.count(12, 8.2) // 5
                                  //     // : index % 23 == 11 || index % 23 == 19
                                  : const StaggeredTile.count(30, 19) // 8
          // :
          ,
          itemBuilder: (context, index) {
            model = myList8[index];
            return index % 23 == 0
                ? ImageTile1(
                    image: model!.image, //'assets/images/1.png',
                    text1: model!.text1, //'ROZANA SUITS',
                    text2: model!.text2, //'PKR 4,990.00',
                  ) // 1
                : index % 23 == 1 ||
                        index % 23 == 2 ||
                        index % 23 == 3 ||
                        index % 23 == 4 ||
                        index % 23 == 5 ||
                        index % 23 == 15 ||
                        (index - 1) % 23 == 15 ||
                        index % 23 == 19 ||
                        (index + 1) % 23 == 19
                    ? ImageTile2(
                        image: model!.image, //'assets/images/2.png',
                        text1: model!.text1, //'ROZANA SUITS',
                        text2: model!.text2, //'PKR 4,990.00',
                      ) // 2 , 9 , 11
                    : (index + 1) % 23 == 15 || (index - 1) % 23 == 19
                        ? textTile(
                            text1: model!.text1, //'Lorem ipsum dollar sit',
                            text2: model!
                                .text2, //'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          )
                        : index == 6
                            ? Container(
                                // margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Lorem ipsum dollar sit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                    ),
                                  ],
                                ),
                              )
                            : index % 23 == 6 && index != 6
                                ? const SizedBox(height: 10)
                                : index % 23 == 7 || index % 23 == 11
                                    ? ImageTile3(
                                        image: model!
                                            .image, //'assets/images/2.png',
                                        text1: model!.text1, //'ROZANA SUITS',
                                        text2: model!.text2, //'PKR 4,990.00',
                                      ) // 4
                                    : (index - 1) % 23 == 7 ||
                                            (index - 1) % 23 == 11
                                        ? ImageTile4(
                                            image: model!
                                                .image, //'assets/images/2.png',
                                            text1:
                                                model!.text1, //'ROZANA SUITS',
                                            text2:
                                                model!.text2, //'PKR 4,990.00',
                                          )
                                        : index % 23 == 9 ||
                                                (index - 1) % 23 == 9 ||
                                                index % 23 == 17 ||
                                                index % 23 == 21 ||
                                                index % 23 == 22
                                            ? ImageTile5(
                                                image: model!
                                                    .image, //'assets/images/1.png',
                                                text1: model!
                                                    .text1, //'ROZANA SUITS',
                                                text2: model!
                                                    .text2, //'PKR 4,990.00',
                                              ) // 5
                                            // : index % 23 == 11 || index % 23 == 19
                                            : ImageTile1(
                                                image: model!
                                                    .image, //'assets/images/1.png',
                                                text1: model!
                                                    .text1, //'ROZANA SUITS',
                                                text2: model!
                                                    .text2, //'PKR 4,990.00',
                                              ); // 8
            // :
          },
          // crossAxisSpacing: 10,
        ),
      ),
    );
  }
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
                height: 280,
                // width: double.infinity,
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
              // hoverColor: Colors.grey[300]!.withOpacity(0.3),
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
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 200,
                // width: double.infinity,
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
                height: 280,
                // width: double.infinity,
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
                height: 280,
                // width: double.infinity,
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
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 280,
                // width: double.infinity,
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

class MyList7 {
  String? image;
  String? text1;
  String? text2;
  MyList7({this.image, this.text1, this.text2});
}

List<MyList7> myList8 = [
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList7(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList7(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------- second list--------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList7(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList7(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList7(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList7(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList7(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
];
