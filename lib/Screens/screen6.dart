import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen6 extends StatelessWidget {
  MyList6? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList6.length,
          crossAxisCount: 10,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) => index % 13 == 0
              ? const StaggeredTile.count(10, 8)
              : index % 13 == 1 ||
                      index % 13 == 2 ||
                      index % 13 == 3 ||
                      index % 13 == 4 ||
                      index % 13 == 5
                  ? const StaggeredTile.count(2, 6.5)
                  : index == 6
                      ? const StaggeredTile.count(10, 3)
                      : index % 13 == 6 && index != 6
                      ? const StaggeredTile.count(10, 1)
                      : index % 13 == 7 ||
                              (index - 1) % 13 == 7 ||
                              index % 13 == 11 ||
                              (index - 1) % 13 == 11
                          ? const StaggeredTile.count(5, 8)
                          : const StaggeredTile.count(10, 8),
          itemBuilder: (context, index) {
            model = myList6[index];
            return index % 13 == 0
                ? ImageTile1(
                    image: model!.image,
                    text1: model!.text1,
                    text2: model!.text2,
                  )
                : index % 13 == 1 ||
                        index % 13 == 2 ||
                        index % 13 == 3 ||
                        index % 13 == 4 ||
                        index % 13 == 5
                    ? ImageTile2(
                        image: model!.image,
                        text1: model!.text1,
                        text2: model!.text2,
                      )
                    : index == 6
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Fusion',
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
                        : index % 13 == 6 && index != 6
                            ? const SizedBox(height: 5)
                            : index % 13 == 7 || index % 13 == 11
                                ? ImageTile3(
                                    image: model!.image,
                                    text1: model!.text1,
                                    text2: model!.text2,
                                  )
                                : index % 13 == 8 || index % 13 == 12
                                    ? ImageTile4(
                                        image: model!.image,
                                        text1: model!.text1,
                                        text2: model!.text2,
                                      )
                                    : ImageTile5(
                                        image: model!.image,
                                        text1: model!.text1,
                                        text2: model!.text2,
                                      );
          },
        ),
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

class MyList6 {
  String? image;
  String? text1;
  String? text2;
  MyList6({this.image, this.text1, this.text2});
}

List<MyList6> myList6 = [
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-------------------------------------------
  MyList6(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-----------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),

  //------------------------second list-------------------
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-------------------------------------------
  MyList6(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-----------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyList6(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-------------------------------------
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList6(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),

];
