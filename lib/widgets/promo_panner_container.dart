import 'package:flutter/material.dart';

class PromoPannerContainer extends StatelessWidget {
  const PromoPannerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/Banner.png', // Replace with your asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: const Text('Promo',
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                ),
                const SizedBox(height: 8),
                Container(
                  color: Colors.black.withOpacity(0.7),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: const Text(
                    'Buy one get one FREE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
