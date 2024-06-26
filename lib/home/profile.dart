import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ujikomtvanmuda/authentication/login.dart';
import 'package:ujikomtvanmuda/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Shader linear = const LinearGradient(
      colors: <Color>[Color(0x0ff20B263), Color(0x0ff78CC5A)],
    ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        height: height / 2.5,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
            gradient: LinearGradient(
                colors: [Color(0xFF20B263), Color(0x0ff78CC5A)])),
      ),
      Column(
        children: [
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(top: 150, bottom: paddingBottom),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(600)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 32.0,
                            offset: const Offset(4.0, 4.0))
                      ]),
                  width: width / 5,
                  height: height / 10),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "M.Irfan",
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 85,
                  width: 301,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 32.0,
                            offset: const Offset(4.0, 4.0))
                      ],
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 20),
                            child: Container(
                              child: Icon(Icons.contact_page),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Account",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()..shader = linear),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 85,
                  width: 301,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 32.0,
                            offset: const Offset(4.0, 4.0))
                      ],
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 20),
                            child: Container(
                              child: Icon(Icons.edit),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Edit Profile",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()..shader = linear),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: ElevatedButton(
                onPressed: () {
                  _showLogoutDialog(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0),
                child: Container(
                  height: 85,
                  width: 301,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 32.0,
                            offset: const Offset(4.0, 4.0))
                      ],
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 20),
                            child: Container(
                              child: Icon(Icons.logout),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Log Out",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()..shader = linear),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ]));
  }

  void _showLogoutDialog(BuildContext context) {
    final Shader linear = const LinearGradient(
      colors: <Color>[Color(0x0ff20B263), Color(0x0ff78CC5A)],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Konfirmasi",
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          content: Text(
            "Apakah Anda yakin ingin keluar?",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
              },
              child: Text(
                "Batal",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    foreground: Paint()..shader = linear),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
                logout(context); // Panggil fungsi logout
              },
              child: Text(
                "Keluar",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    foreground: Paint()..shader = linear),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(
        'isLoggedIn', false); // Setelah logout, hapus status login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
