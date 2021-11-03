import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen2 extends StatelessWidget {
  // MyProduct2? model;
  int _totalcount = myproduct2.length + myBanar2.length + myText2.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          
          itemCount: _totalcount % 21 == 0 
          ? _totalcount + _totalcount~/21
          : _totalcount + _totalcount~/21 + 1,
          // myproduct2.length + myBanar2.length + myText2.length +2,
          crossAxisCount: 12,
          // crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) =>
              index % 22 == 0 || index % 22 == 10 || index % 22 == 17
                  ? const StaggeredTile.count(12, 8.2)
                  : index == 1
                      ? const StaggeredTile.count(12, 3)
                      : index % 22 == 1 && index != 1
                          ? const StaggeredTile.count(12, 1)
                          : index % 22 == 3 ||
                                  (index + 1) % 22 == 3 ||
                                  (index - 1) % 22 == 3 ||
                                  index % 22 == 15 ||
                                  (index + 1) % 22 == 15 ||
                                  (index - 1) % 22 == 15 ||
                                  index % 22 == 19 ||
                                  (index + 1) % 22 == 19 ||
                                  (index - 1) % 22 == 19
                              ? const StaggeredTile.count(4, 8.2)
                              : index % 22 == 5 ||
                                      index % 22 == 13 ||
                                      index % 22 == 21
                                  ? const StaggeredTile.count(12, 8.2)
                                  : const StaggeredTile.count(6, 8.2),
          itemBuilder: (context, index) {
            // model = myproduct2[index];
            return index % 22 == 0 || index % 22 == 10 || index % 22 == 17
                ? ImageTile1(
                    image: myBanar2[((index / 22) * 4 - (index / 22)).toInt()]
                        .image,
                    text1: myBanar2[((index / 22) * 4 - (index / 22)).toInt()]
                        .text1,
                    text2: myBanar2[((index / 22) * 4 - (index / 22)).toInt()]
                        .text2,
                  )
                : index == 1
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Fusion',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            ),
                          ],
                        ),
                      )
                    : index % 22 == 1 && index != 1
                        ? const SizedBox(height: 5)
                        : index % 22 == 14 //|| index % 22 == 20
                            ? textTile(
                                text1: myText2[(index ~/ 22) * 2].text1,
                                text2: myText2[(index ~/ 22) * 2].text2,
                              )
                            : index % 22 == 20
                                ? textTile(
                                    text1:
                                        myText2[((index ~/ 22) * 2) + 1].text1,
                                    text2:
                                        myText2[((index ~/ 22) * 2) + 1].text2,
                                  )
                                : index % 22 >= 2 && index % 22 <= 9
                                    ? ImageTile2(
                                        image: myproduct2[(index ~/ 22) * 16 +
                                                ((index % 22) - 2)]
                                            .image, //'assets/images/2.png',
                                        text1: myproduct2[(index ~/ 22) * 16 +
                                                ((index % 22) - 2)]
                                            .text1, //'ROZANA SUITS',
                                        text2: myproduct2[(index ~/ 22) * 16 +
                                                ((index % 22) - 2)]
                                            .text2, //'PKR 4,990.00',
                                      )
                                    : index % 11 >= 2 && index % 22 <= 13
                                        ? ImageTile2(
                                            image: myproduct2[
                                                    (index ~/ 22) * 16 +
                                                        ((index % 22) - 3)]
                                                .image, //'assets/images/2.png',
                                            text1: myproduct2[
                                                    (index ~/ 22) * 16 +
                                                        ((index % 22) - 3)]
                                                .text1, //'ROZANA SUITS',
                                            text2: myproduct2[
                                                    (index ~/ 22) * 16 +
                                                        ((index % 22) - 3)]
                                                .text2, //'PKR 4,990.00',
                                          )
                                        : index % 22 == 15 || index % 22 == 16
                                            ? ImageTile2(
                                                image: myproduct2[
                                                        (index ~/ 22) * 16 +
                                                            ((index % 22) - 4)]
                                                    .image, //'assets/images/2.png',
                                                text1: myproduct2[
                                                        (index ~/ 22) * 16 +
                                                            ((index % 22) - 4)]
                                                    .text1, //'ROZANA SUITS',
                                                text2: myproduct2[
                                                        (index ~/ 22) * 16 +
                                                            ((index % 22) - 4)]
                                                    .text2, //'PKR 4,990.00',
                                              )
                                            : index % 22 == 18 ||
                                                    index % 22 == 19
                                                ? ImageTile2(
                                                    image: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    5)]
                                                        .image, //'assets/images/2.png',
                                                    text1: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    5)]
                                                        .text1, //'ROZANA SUITS',
                                                    text2: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    5)]
                                                        .text2, //'PKR 4,990.00',
                                                  )
                                                : ImageTile2(
                                                    image: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    6)]
                                                        .image, //'assets/images/2.png',
                                                    text1: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    6)]
                                                        .text1, //'ROZANA SUITS',
                                                    text2: myproduct2[
                                                            (index ~/ 22) * 16 +
                                                                ((index % 22) -
                                                                    6)]
                                                        .text2, //'PKR 4,990.00',
                                                  );
          },
        ),
      ),
    );
  }
}

class textTile extends StatelessWidget {
  textTile({
    this.text1,
    this.text2,
  });
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
  ImageTile1({
    this.image,
    this.text1,
    this.text2,
  });
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
          SizedBox(
            height: 280,
            // width: double.infinity,
            child: Image.asset(
              image!,
              fit: BoxFit.fill,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.grey[300]!.withOpacity(0.3),
              splashColor: Colors.grey[300]!.withOpacity(0.3),
              onTap: () {},
            ),
          ),
          Text(text2!),
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
                height: 260,
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

class MyProduct2 {
  String? image;
  String? text1;
  String? text2;
  MyProduct2({this.image, this.text1, this.text2});
}

class MyBanar2 {
  String? image;
  String? text1;
  String? text2;
  MyBanar2({this.image, this.text1, this.text2});
}

class MyText2 {
  String? image;
  String? text1;
  String? text2;
  MyText2({this.image, this.text1, this.text2});
}

List<MyProduct2> myproduct2 = [
  // MyProduct2(
  //   image: 'assets/images/1.png',
  //   text1: 'ROZANA SUITS',
  //   text2: 'PKR 4,990.00',
  // ),
  // //----------------------------
  // MyProduct2(
  //   text1: 'Lorem ipsum dollar sit',
  //   text2:
  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  // ),
  //-------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  // //-----------------------------------
  // MyProduct2(
  //   image: 'assets/images/1.png',
  //   text1: 'ROZANA SUITS',
  //   text2: 'PKR 4,990.00',
  // ),
  //------------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  // MyProduct2(
  //   text1: 'Lorem ipsum dollar sit',
  //   text2:
  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  // ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  // MyProduct2(
  //   image: 'assets/images/1.png',
  //   text1: 'ROZANA SUITS',
  //   text2: 'PKR 4,990.00',
  // ),
  //-----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  // MyProduct2(
  //   text1: 'Lorem ipsum dollar sit',
  //   text2:
  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  // ),
  //-----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),

  //--------------------------second list----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  // //-----------------------------------
  // MyProduct2(
  //   image: 'assets/images/1.png',
  //   text1: 'ROZANA SUITS',
  //   text2: 'PKR 4,990.00',
  // ),
  //------------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  // MyProduct2(
  //   text1: 'Lorem ipsum dollar sit',
  //   text2:
  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  // ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  // MyProduct2(
  //   image: 'assets/images/1.png',
  //   text1: 'ROZANA SUITS',
  //   text2: 'PKR 4,990.00',
  // ),
  //-----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  // MyProduct2(
  //   text1: 'Lorem ipsum dollar sit',
  //   text2:
  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  // ),
  //-----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------third list----------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyProduct2( 
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyProduct2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
];

List<MyBanar2> myBanar2 = [
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 1',
  ),
  //-----------------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 2',
  ),
  //------------------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 3',
  ),

  //--------------------------second list----------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 4',
  ),
  //-----------------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 5',
  ),
  //------------------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 6',
  ),
  //---------------------------------third--------------------------
  MyBanar2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00 6',
  ),
];

List<MyText2> myText2 = [
  MyText2(
    text1: 'Lorem ipsum dollar sit 1',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-------------------------------
  MyText2(
    text1: 'Lorem ipsum dollar sit 2',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),

  //--------------------------second list----------------------------
  MyText2(
    text1: 'Lorem ipsum dollar sit 3',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-------------------------------
  MyText2(
    text1: 'Lorem ipsum dollar sit 4',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
];
