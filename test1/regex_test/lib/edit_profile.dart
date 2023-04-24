import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff111111),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff111111)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 98,
                  width: 98,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/3@2x.png"))),
                ),
                Positioned(
                  left: 65,
                  top: 65,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xff59B8BE))),
                    child: Icon(
                      Icons.edit,
                      size: 17,
                      color: Color(0xff59B8BE),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone No.",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Address",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Birth Date",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Birth Time",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Born Location",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Occupation",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Marriage",
                      hintStyle: GoogleFonts.hind(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                height: 50, width: MediaQuery.of(context).size.width),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xff59B8BE)),
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: GoogleFonts.hind(fontSize: 16),
                ))),
      ),
    );
  }
}
