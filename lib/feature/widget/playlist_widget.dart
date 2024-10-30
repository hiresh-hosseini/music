import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/data/remote/endpoint.dart';
import 'package:music/feature/controller/home_controller.dart';

class PlaylistWidget extends StatelessWidget {
  PlaylistWidget({super.key});

  // final List<PlayListModel> playlist;
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return SizedBox(
        height: controller.playList.length * 120,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.playList.length,
          itemBuilder: (context, index) {
            final playList = controller.playList[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 41, 35, 58)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child:
                            //Image-------------------------------------------------------------------
                            CachedNetworkImage(
                          imageUrl:
                              Endpoint.baseUrl + playList.pictureUrl.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Title-----------------------------------------------------------
                          SizedBox(
                            width: 200,
                            child: Text(
                              playList.trackName ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),

                          //Name singer-----------------------------------------------------
                          Text(
                            playList.artistName ?? '',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
