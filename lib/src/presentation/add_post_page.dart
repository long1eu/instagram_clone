// File created by
// Lung Razvan <long1eu>
// on 05/05/2020

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key key}) : super(key: key);

  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> with SingleTickerProviderStateMixin {
  TabController tabController;

  CameraController controller;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 3, vsync: this);

    initCamera();
  }

  Future<void> initCamera() async {
    final List<CameraDescription> cameras = await availableCameras();

    final CameraDescription camera =
        cameras.firstWhere((CameraDescription element) => element.lensDirection == CameraLensDirection.back);

    final CameraController cameraController = CameraController(camera, ResolutionPreset.medium);
    await cameraController.initialize();

    setState(() => this.controller = cameraController);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              if (controller != null)
                Container(
                  height: MediaQuery.of(context).size.width + 28.0,
                  width: MediaQuery.of(context).size.width,
                  child: Transform.scale(
                    scale: controller.value.aspectRatio / size.aspectRatio,
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        child: CameraPreview(controller),
                      ),
                    ),
                  ),
                ),
              Container(
                alignment: AlignmentDirectional.bottomStart,
                child: IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: IconButton(
                  icon: const Icon(Icons.flash_off),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Flexible(
            child: Container(
              color: Colors.black,
              alignment: AlignmentDirectional.center,
              constraints: const BoxConstraints.expand(),
              child: GestureDetector(
                onTap: () async {
                  final Directory directory = await getApplicationDocumentsDirectory();
                  final String path = '${directory.path}/images/${Uuid().v4()}.jpg';
                  await controller.takePicture(path);
                },
                child: Container(
                  width: 96.0,
                  height: 96.0,
                  alignment: AlignmentDirectional.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: Container(
                    width: 64.0,
                    height: 64.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.black,
          child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            onTap: (int i) {},
            tabs: const <Widget>[
              Tab(
                text: 'Library',
              ),
              Tab(
                text: 'Photo',
              ),
              Tab(
                text: 'Video',
              )
            ],
          ),
        ),
      ),
    );
  }
}
