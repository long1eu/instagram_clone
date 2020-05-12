// File created by
// Lung Razvan <long1eu>
// on 05/05/2020

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/posts/update_post_info.dart';
import 'package:instagram_clone/src/containers/save_post_info_container.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/posts/save_post_info.dart';
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

  bool isTakingPhoto = false;
  List<CameraDescription> cameras;
  CameraDescription selectedCamera;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 3, vsync: this);

    initCamera();
  }

  Future<void> initCamera() async {
    cameras = await availableCameras();
    selectedCamera = cameras[0];
    await initializeCameraController();
  }

  Future<void> initializeCameraController() async {
    final CameraController cameraController = CameraController(selectedCamera, ResolutionPreset.medium);
    await cameraController.initialize();

    setState(() => controller = cameraController);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
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
        mainAxisSize: MainAxisSize.min,
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
              if (cameras != null && cameras.length != 1)
                Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: IconButton(
                    icon: Container(
                      color: Colors.black54,
                      child: const Icon(Icons.refresh),
                    ),
                    onPressed: () {
                      if (selectedCamera.lensDirection == CameraLensDirection.back) {
                        selectedCamera = cameras.firstWhere(
                            (CameraDescription element) => element.lensDirection == CameraLensDirection.front);
                      } else {
                        selectedCamera = cameras.firstWhere(
                            (CameraDescription element) => element.lensDirection == CameraLensDirection.back);
                      }

                      initializeCameraController();
                    },
                  ),
                ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: IconButton(
                  icon: Container(
                    color: Colors.black54,
                    child: const Icon(Icons.flash_off),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Flexible(
            child: SavePostInfoContainer(
              builder: (BuildContext context, SavePostInfo info) {
                return Container(
                  color: Colors.black,
                  alignment: AlignmentDirectional.center,
                  constraints: const BoxConstraints.expand(),
                  child: InkWell(
                    onTap: () async {
                      if (isTakingPhoto) {
                        return;
                      }

                      setState(() => isTakingPhoto = true);
                      final Directory directory = await getTemporaryDirectory();
                      final String path = '${directory.path}/${Uuid().v4()}.jpg';
                      await controller.takePicture(path);
                      setState(() => isTakingPhoto = false);

                      info ??= SavePostInfo();
                      info = info.rebuild((SavePostInfoBuilder b) => b.pictures.add(path));
                      StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(info));

                      Navigator.pushNamed(context, '/postDetails');
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
                        child: isTakingPhoto ? const CircularProgressIndicator() : null,
                      ),
                    ),
                  ),
                );
              },
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
