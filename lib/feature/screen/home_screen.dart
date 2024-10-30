import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/feature/controller/home_controller.dart';
import 'package:music/feature/widget/music_widget.dart';
import 'package:music/feature/widget/playlist_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: const Color(0xff2F3645),
            body: SafeArea(
              child: controller.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 300,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),

                              //Name singer-----------------------------------------------------
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'اسم موزیک',
                                        maxLines: 3,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'اسم خواننده',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Music----------------------------------------------------------
                          const MusicWidget(),
                          const SizedBox(height: 15),
                          //PlayList-------------------------------------------------------
                          PlaylistWidget(),
                        ],
                      ),
                    ),
            ),
          );
        });
  }
}
