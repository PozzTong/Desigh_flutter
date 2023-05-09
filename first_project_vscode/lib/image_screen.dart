import 'package:flutter/material.dart';

class ImageScr extends StatefulWidget {
  const ImageScr({super.key});

  @override
  State<ImageScr> createState() => _ImageScrState();
}

class _ImageScrState extends State<ImageScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Image'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: const [
          ListTile(
              leading: CircleAvatar(
                child: Text('1'),
              ),
              title: Text('Mr Raksa'),
              subtitle: Text('Friend'),
              trailing: Icon(Icons.delete)),
          Card(
            child: ListTile(
                leading: CircleAvatar(
                  child: Text('1'),
                ),
                title: Text('Mr Raksa'),
                subtitle: Text('Friend'),
                trailing: Icon(Icons.delete)),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text('2'),
              ),
              title: Text('Mr Thearith'),
              subtitle: Text('Friend'),
              trailing: Icon(Icons.delete),
            ),
          )
        ],
      ),
    );
  }
}

// class MyImage extends StatelessWidget {
//   const MyImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Image'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: const [
//           ListTile(
//               leading: CircleAvatar(
//               child: Text('1'),),
//               title: Text('Mr Raksa'),
//               subtitle: Text('Friend'),
//               trailing: Icon(Icons.delete))
//         ],
//       ),
//     );
//   }
// }
