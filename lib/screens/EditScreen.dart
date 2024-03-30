import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:helpers/helpers.dart';
import 'package:image_picker/image_picker.dart';
import '../components/colors.dart';
import 'package:video_editor/video_editor.dart';
import 'package:video_player/video_player.dart';
import 'package:simple_animations/simple_animations.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Row(
          children: [
            // This is first left side of page
            Container(
              height: MediaQuery.of(context).size.height,
              width: 60,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/back.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/undo.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/redo.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/full screen.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/settings.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 70,
                        height: 70,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/timeline.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Container(
                        color: shadowColor,
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage('assets/Icons/exit.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              color: Colors.black,
                              child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.play_arrow_rounded,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              color: bgColor,

                              //   This is where we make the controls
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: () {},
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: shadowColor,
                                              child: const Image(
                                                image: AssetImage(
                                                    'assets/Icons/import.png'),
                                                height: 30,
                                                width: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/Icons/video.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: InkWell(
                                                onTap: () {},
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor: shadowColor,
                                                  child: const Image(
                                                    image: AssetImage(
                                                        'assets/Icons/store.png'),
                                                    height: 30,
                                                    width: 25,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: InkWell(
                                                onTap: () {},
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor: shadowColor,
                                                  child: const Image(
                                                    image: AssetImage(
                                                        'assets/Icons/play.png'),
                                                    height: 30,
                                                    width: 25,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey[900],
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

