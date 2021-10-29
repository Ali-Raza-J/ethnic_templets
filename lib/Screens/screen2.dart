import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen2 extends StatelessWidget {
  MyList2? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList2.length,
          crossAxisCount: 12,
          // crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) => index % 22 == 0 ||
                  index % 22 == 10 ||
                  index % 22 == 17
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
                      : index % 22 == 5 || index % 22 == 13 || index % 22 == 21
                          ? const StaggeredTile.count(12, 8.2)
                          : const StaggeredTile.count(6, 8.2),
          itemBuilder: (context, index) {
            model = myList2[index];
            return index % 22 == 0 ||
                  index % 22 == 10 ||
                  index % 22 == 17
                ? ImageTile1(
                    image: model!.image,
                    text1: model!.text1,
                    text2: model!.text2,
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
                        : index % 22 == 14 || index % 22 == 20
                            ? textTile(
                                text1: model!.text1,
                                text2: model!.text2,
                              )
                            : ImageTile2(
                                image: model!.image,
                                text1: model!.text1,
                                text2: model!.text2,
                              );
          },
          // staggeredTiles: const [
          //   StaggeredTile.count(12, 7), // 1
          //   StaggeredTile.count(12, 3.7), // 2
          //   StaggeredTile.count(4, 8), // 3
          //   StaggeredTile.count(4, 8), // 3
          //   StaggeredTile.count(4, 8), // 3
          //   StaggeredTile.count(3, 8.2), // 4
          //   StaggeredTile.count(6, 8.2), // 4
          //   StaggeredTile.count(3, 8.2), // 4
          //   StaggeredTile.count(6, 8.2), // 5
          //   StaggeredTile.count(6, 8.2), // 5
          //   StaggeredTile.count(6, 8.2), // 6
          //   StaggeredTile.count(6, 8.2), // 6
          //   StaggeredTile.count(12, 7), // 7
          //   StaggeredTile.count(6, 8.2), // 8
          //   StaggeredTile.count(6, 8.2), // 8
          //   StaggeredTile.count(3, 8.2), // 9
          //   StaggeredTile.count(6, 8.2), // 9
          //   StaggeredTile.count(3, 8.2), // 9
          //   StaggeredTile.count(4, 8.2), // 10
          //   StaggeredTile.count(4, 8.2), // 10
          //   StaggeredTile.count(4, 8.2), // 10
          //   StaggeredTile.count(12, 7), // 11
          //   StaggeredTile.count(4, 8.2), // 12
          //   StaggeredTile.count(4, 8.2), // 12
          //   StaggeredTile.count(4, 8.2), // 12
          //   StaggeredTile.count(3, 8.2), // 13
          //   StaggeredTile.count(6, 8.2), // 13
          //   StaggeredTile.count(3, 8.2), // 13
          // ],
          // children: [
          //   //-------------card1-----------
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------text 2-----------
          //   textTile(
          //     text1: 'Fusion',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s.',
          //   ),
          //   //-------------card 3-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 4-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card 5-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 6-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 7-----------
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 8-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 9-----------
          //   const SizedBox(),
          //   ImageTile3(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card 10-----------
          //   textTile(
          //     text1: 'Lorem ipsum dollar sit',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 11-----------
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //-------------card 12-----------
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   ImageTile2(
          //     image: 'assets/images/2.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   textTile(
          //     text1: 'Lorem ipsum dollar sit',
          //     text2:
          //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          //   ),
          //   //-------------card 13------------
          //   const SizedBox(),
          //   ImageTile3(
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
          // Column(
          // children: [
          SizedBox(
            height: 280,
            // width: double.infinity,
            child: Image.asset(
              // 'assets/images/2.png',
              image!,
              fit: BoxFit.fill,
            ),
          ),
          // const SizedBox(height: 20),
          // Text(text1!, style: const TextStyle(fontSize: 12)),
          // Text(
          //   text2!,
          //   style: const TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 12,
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),
          //   ],
          // ),
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



class MyList2 {
  String? image;
  String? text1;
  String? text2;
  MyList2({this.image, this.text1, this.text2});
}

List<MyList2> myList2 = [
  MyList2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------
  MyList2(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-----------------------------------
  MyList2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //--------------------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  MyList2(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  MyList2(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //-----------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList2(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-----------------------------
  MyList2(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),

  //--------------------------second list----------------------------

  
];
