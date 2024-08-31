import 'package:flutter/material.dart';
import 'package:gelir_gider/views/edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
            },
            icon: const Icon(Icons.edit),
            iconSize: 22,
          ),
        ],
      ),
      body: const Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo.png'),
                backgroundColor: Colors.transparent,
              ),
               SizedBox(height: 20.0),
              // Kullanıcı Adı
               Text(
                'Arda Kuvanç',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 20.0),
              // Diğer Profil Bilgileri
               ProfileInfoTile(title: 'E-posta', value: 'ardakuvanc3@gmail.com'),
               ProfileInfoTile(title: 'Bankalar', value: 'AkBank, VakıfBank'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final String title;
  final String value;

  const ProfileInfoTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
    );
  }
}
