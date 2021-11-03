import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen1 extends StatelessWidget {
  MyList? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList.length,
          crossAxisCount: 12,
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
                                  : const StaggeredTile.count(12, 8.2) // 8
          // :
          ,
          itemBuilder: (context, index) {
            model = myList[index];
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
                            : index % 21 == 4 && index != 4
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
          // crossAxisSpacing: 10,
          mainAxisSpacing: 5,
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

class MyList {
  String? image;
  String? text1;
  String? text2;
  MyList({this.image, this.text1, this.text2});
}

List<MyList> myList = [
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------- second list--------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-----------------------third list-----------------------

  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList(
    text1: 'Fusion',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
  ),
  //-------------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//-------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------------
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//--------------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//------------------------------------------
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
//----------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
//---------------------------------------------
  MyList(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
];
