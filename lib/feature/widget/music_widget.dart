import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SliderTheme(
        //   data: SliderTheme.of(context).copyWith(
        //     activeTrackColor: const Color(0xffE76F51),
        //     thumbColor: const Color(0xffE76F51),
        //   ),

        //   //Slider--------------------------------------------------------------------
        //   child: Slider(
        //     value: 10.0,
        //     onChanged: (value) {},
        //   ),
        // ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              //Total time-------------------------------------------------------------
              Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Spacer(),

              //Current time-----------------------------------------------------------
              Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: Row(
            children: [
              const Icon(Iconsax.shuffle, color: Colors.white, size: 30),
              const Spacer(),
              Row(
                children: [
                  //backward-------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.backward_end_fill,
                        color: Colors.white, size: 35),
                  ),
                  const SizedBox(width: 15),

                  //play and pause-----------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.play_circle_fill,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  const SizedBox(width: 15),

                  //forward-------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.forward_end_fill,
                        color: Colors.white, size: 35),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.repeat,
                    color: Colors.white, size: 30),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
