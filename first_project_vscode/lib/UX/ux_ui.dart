import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 40, fontFamily: 'Pacifico'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnFLF5LAYpan9FA7G08ZLQ2mHd3yLLc3Dh6Q&usqp=CAU'),
                      ),
                      title: Text('Mr Snay'),
                      subtitle: Text('Position: Creater'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [Text('270'), Text('Track')],
                        ),
                        Column(
                          children: const [Text('270'), Text('Track')],
                        ),
                        Column(
                          children: const [Text('270'), Text('Track')],
                        ),
                        Column(
                          children: const [Text('270'), Text('Track')],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    menuWidget(
                        iconName: 'Wallet',
                        colorBackground: Colors.lightBlue,
                        icons: Icons.currency_exchange),
                    menuWidget(
                        iconName: 'AirPlane',
                        colorBackground: Colors.lightBlue,
                        icons: Icons.airplanemode_active),
                    menuWidget(
                        iconName: 'Bluetooth',
                        colorBackground: Colors.lightBlue,
                        icons: Icons.bluetooth),
                    menuWidget(
                        iconName: 'Single',
                        colorBackground: Colors.lightBlue,
                        icons: Icons.heart_broken),
                  ],
                ),
              ),
            ),
            listItem(),
            listItem(),
            listItem(),
            
            
          ],
        ),
      ),
    );
  }

  Widget menuWidget(
      {String? iconName = 'noti',
      Color colorBackground = Colors.white,
      IconData icons = Icons.notifications}) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: 90,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration:
                  BoxDecoration(color: colorBackground, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  icons,
                  size: 40,
                ),
              ),
            ),
            Text(
              iconName!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Center(
              child: Icon(Icons.settings),
            ),
          ),
          title: Text('Tittle Name'),
          subtitle: Text('SubTittle'),
        ),
      ),
    );
  }
}
