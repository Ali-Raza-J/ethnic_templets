import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Screen3 extends StatelessWidget {
  MyList3? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: StaggeredGridView.countBuilder(
          itemCount: myList3.length,
          crossAxisCount: 12,
          // crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          staggeredTileBuilder: (index) => index == 0
              ? const StaggeredTile.count(12, 3)
              : index % 9 == 0 && index != 0
                  ? const StaggeredTile.count(12, 1)
                  : index % 9 == 1 ||
                          index % 9 == 2 ||
                          index % 9 == 3 ||
                          index % 9 == 8
                      ? const StaggeredTile.count(12, 9)
                      : const StaggeredTile.count(6, 9),

          itemBuilder: (context, index) {
            model = myList3[index];
            return index == 0
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
                : index % 9 == 0 && index != 0
                    ? const SizedBox(height: 5)
                    : index % 9 == 2
                        ? ImageTile1(
                          image: model!.image,
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
          //   StaggeredTile.count(12, 2.5), // 1
          //   StaggeredTile.count(3, 8.2), // 2
          //   StaggeredTile.count(6, 8.2), // 2
          //   StaggeredTile.count(3, 8.2), // 2
          //   StaggeredTile.count(12, 8.5), // 3
          //   StaggeredTile.count(3, 8.2), // 4
          //   StaggeredTile.count(6, 8.2), // 4
          //   StaggeredTile.count(3, 8.2), // 4
          //   StaggeredTile.count(6, 8.2), // 5
          //   StaggeredTile.count(6, 8.2), // 5
          //   StaggeredTile.count(6, 8.2), // 6
          //   StaggeredTile.count(6, 8.2), // 6
          //   StaggeredTile.count(3, 8.2), // 7
          //   StaggeredTile.count(6, 8.2), // 7
          //   StaggeredTile.count(3, 8.2), // 7
          // ],
          // children: [
          //   //-------------text 1-----------
          //   Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: const [
          //         Text(
          //           'Mehak - Kids Semi Formal Collection`21',
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          //         ),
          //         SizedBox(height: 5),
          //         Text(
          //           'Lorem Ipsum is simply dummy text of the printing and typesetting industry printing and typesetting industry.',
          //           // style: TextStyle(color: Color(0Xff3A3A3A)),
          //         ),
          //       ],
          //     ),
          //   ),
          //   //---------------card 2--------------
          //   const SizedBox(),
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   const SizedBox(),
          //   //-------------card 3-----------
          //   ImageTile1(
          //     image: 'assets/images/1.png',
          //     text1: 'ROZANA SUITS',
          //     text2: 'PKR 4,990.00',
          //   ),
          //   //---------------card 4--------------
          //   const SizedBox(),
          //   ImageTile1(
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
          //   //---------------card 7--------------
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
}

class ImageTile1 extends StatelessWidget {
  ImageTile1({this.image, this.text1, this.text2});
  String? image;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                // height: 260,
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

class MyList3 {
  String? image;
  String? text1;
  String? text2;
  MyList3({this.image, this.text1, this.text2});
}

List<MyList3> myList3 = [
  MyList3(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  MyList3(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),

  //----------------------------------second list--------------------
  MyList3(
    text1: 'Lorem ipsum dollar sit',
    text2:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  ),
  //-------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  MyList3(
    image: 'assets/images/1.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //---------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
  //----------------------------------------
  MyList3(
    image: 'assets/images/2.png',
    text1: 'ROZANA SUITS',
    text2: 'PKR 4,990.00',
  ),
];
