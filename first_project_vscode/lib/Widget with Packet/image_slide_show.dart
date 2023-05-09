
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';


class SlideImage extends StatelessWidget {
  const SlideImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide Image'),
      ),
    body: const ImageSlideshow(
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image(
          image: NetworkImage(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2Fmotos--421860690096786772%2F&psig=AOvVaw2F8EkO4sLmo3xRwGCPTAhw&ust=1682273566020000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPio48OLvv4CFQAAAAAdAAAAABAO'
          )),
        Image(
          image: NetworkImage(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2Fmotos--421860690096786772%2F&psig=AOvVaw2F8EkO4sLmo3xRwGCPTAhw&ust=1682273566020000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPio48OLvv4CFQAAAAAdAAAAABAO'
          )),
        Image(
          image: NetworkImage(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2Fmotos--421860690096786772%2F&psig=AOvVaw2F8EkO4sLmo3xRwGCPTAhw&ust=1682273566020000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPio48OLvv4CFQAAAAAdAAAAABAO'
        ))
      ]),
          
    );
  }
}