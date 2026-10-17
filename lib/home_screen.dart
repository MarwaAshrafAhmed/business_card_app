import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CustomSocialCard.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> launch(String url) async {

    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/man.jpeg"),
                ),

                Text(
                  "Marcus Whitlow",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: .w500,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "CEO & Founder",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 20,
                        fontWeight: .w500,
                      ),
                    ),
                    Text(
                      " | ",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 20,
                        fontWeight: .w500,
                      ),
                    ),
                    Text(
                      "Quantix",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: .w500,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  child: Divider(color: Colors.grey.shade500),
                ),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(16),
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Save Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                CustomSocialCard(
                  icon: FontAwesomeIcons.whatsapp,
                  text: "Call me",
                  subText: "+20123456543",
                  color: Colors.green,
                  tap: (){

                  },
                ),

                CustomSocialCard(
                  icon: FontAwesomeIcons.facebook,
                  text: "Follow me",
                  subText: "@marcus.whitlow",
                  color: Colors.blueAccent,
                  tap: (){

                  },
                ),



                CustomSocialCard(
                  icon: FontAwesomeIcons.github,
                  text: "Email me",
                  subText: "marcus.whitlow@gmail.com",
                  color: Colors.black,
                  tap: (){
                    launch("https://github.com/MarwaAshrafAhmed");
                  },
                ),


                CustomSocialCard(
                  icon: FontAwesomeIcons.linkedin,
                  text: "Linked In",
                  subText: "linkedin/in/marcus-whitlow",
                  color: Colors.blueAccent,
                  tap: (){
                  },
                ),

                //Text("data", style: GoogleFonts.abel(fontSize: 24)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
