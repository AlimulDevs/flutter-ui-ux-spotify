import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/models/artist_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Good Afternoon',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Image.asset(
                  'assets/images/bell.png',
                  width: 16,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/images/clock.png',
                  width: 16,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/images/settings.png',
                  width: 16,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: artisModel.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 7,
                  childAspectRatio: 182 / 55,
                  crossAxisSpacing: 7,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 55,
                    width: 182,
                    decoration: BoxDecoration(
                        color: Color(0xff252424),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Row(
                      children: [
                        Image.asset(artisModel[index].imgUrl),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            artisModel[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: 39,
            ),
            Text(
              'Your Top Mixes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/top1.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Selena Gomex Mix',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/top2.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Taylor Shift Mix',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/top3.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Ed sheeran Mix',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Based on your recent listening',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/based1.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Agust D, Steve Aoki, BTS, Lil Nas X, Coldplay',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/based2.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Your daily updates of themost played tracks rig...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/based3.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Ed sheeran, The KidLAROI, David Guetta,...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              'Your Shows',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/show1.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/show2.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/show3.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
