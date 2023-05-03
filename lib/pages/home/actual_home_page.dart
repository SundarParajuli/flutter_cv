import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ActualHomePage extends StatelessWidget {
  const ActualHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [ProfileAndCover(), Placeholder()],
    );
  }
}

class ProfileAndCover extends StatelessWidget {
  const ProfileAndCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      child: Stack(
        children: [
          SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                imageUrl:
                    "https://codereis.com/images/blog/vscode/flutter_ui_example.png",
                fit: BoxFit.fitWidth,
                placeholder: (context, url) => Transform.scale(
                  scale: 0.5,
                  child: const CircularProgressIndicator(),
                ),
              )),
          Positioned(
              top: 130,
              left: 30,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://media.licdn.com/dms/image/C5603AQGCGvwYL1tKZw/profile-displayphoto-shrink_800_800/0/1656007752560?e=2147483647&v=beta&t=hxciTyTyLlvVIcjKKaLSZYNpPjvWFn5fva-hygA2qYE",
                  width: 80.0,
                  height: 80.0,
                ),
              )),
        ],
      ),
    );
  }
}
