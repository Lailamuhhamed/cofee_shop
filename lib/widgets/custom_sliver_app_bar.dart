import 'package:flutter/material.dart';

import 'promo_panner_container.dart';
import 'search_text_field.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,

      title: const Text(
        'Coffee Shop',
        style: TextStyle(color: Colors.white),
      ),
      pinned: true,
      floating: true,
      expandedHeight: 300.0, // Extra height to accommodate promo banner
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 80,
              color: Colors.white,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50), // Space for status bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'location',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        'Bilzen, Tanjungbalai',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 15),
                      SearchTextField(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.center, child: PromoPannerContainer()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
