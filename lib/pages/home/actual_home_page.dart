import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ActualHomePage extends StatelessWidget {
  const ActualHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ProfileAndCover(),
        const ListTile(
          title: AutoSizeText("Sundar Parajuli"),
          subtitle: AutoSizeText("Mobile Application developer"),
          trailing: Icon(Icons.edit),
        ),
        const Card(
          child: ListTile(
            title: AutoSizeText("Career note"),
            subtitle: AutoSizeText(
                "I have a deep understanding of modern Android development and know how to write readable, maintainable, performant object-oriented Java and kotlin. I am experienced with Android development tools, care about quality and know what it means to ship high-quality code. I have a high-level understanding of end-to-end systems and have released at least one app or have a project in the works that I can tell you about. I have at least 5 years of professional experience."),
            trailing: Icon(Icons.edit),
          ),
        ),
        Card(
          child: Column(
            children: [
              Row(
                children: const [
                  AutoSizeText("Languages"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: const Text('AB'),
                    ),
                    label: const Text('Aaron Burr'),
                  )
                ],
              )
            ],
          ),
        )
      ],
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
          const Positioned(
              top: 130,
              left: 20,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: CachedNetworkImageProvider(
                  "https://media.licdn.com/dms/image/C5603AQGCGvwYL1tKZw/profile-displayphoto-shrink_800_800/0/1656007752560?e=2147483647&v=beta&t=hxciTyTyLlvVIcjKKaLSZYNpPjvWFn5fva-hygA2qYE",
                ),
              )),
        ],
      ),
    );
  }
}
