import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('About Me', style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold
            )),
            backgroundColor: Colors.blue[100],
          ),
          body: Container(),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.account_box),
              text: 'Personal Information',
              ),
              Tab(icon: Icon(Icons.school),
              text: 'Educational Background',
              ),
              Tab(icon: Icon(Icons.lightbulb),
              text: 'Skills',
              ),
              Tab(icon: Icon(Icons.star),
              text: 'Interests',
              ),
              Tab(icon: Icon(Icons.phone),
              text: 'Contact Information',
              )
            ],
          ),
          bottomSheet: TabBarView(
            children: [
              PersonalInfo(),
              EducationalBackground(),
              Skills(),
              Interests(),
              ContactInformation(),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/2x2_Abrahan.png'),
                radius: 60,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Neldine Abrahan',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Red Spartan',
                    style: GoogleFonts.poppins(
                      fontSize: 16
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.twenty_one_mp_outlined, size: 18),
              SizedBox(width: 4),
              Text('Age', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('21 years old'),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.cake, size: 18),
              SizedBox(width: 4),
              Text('Birthday', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('December 25, 2002'),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.home, size: 18),
              SizedBox(width: 4),
              Text('Address', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('Villa Teresa Subd., Sambat, San Pascual, Batangas'),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.edit, size: 18),
              SizedBox(width: 4),
              Text('Bio', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('I am John Neldine Abrahan, currently on my 3rd year taking BS Information Technology - Major in Business Analytics. I am working with App Development to improve my skills in programming. :)', textAlign: TextAlign.justify,),
        ],
      ),
    );
  }
  }

class EducationalBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.school, size: 18),
              SizedBox(width: 4),
              Text('Tertiary', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Batangas State University (2021-Present)')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text('BS Information Technology - Major in Business Analytics')
                ),
              )
            ],
          ),
        ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.school, size: 18),
              SizedBox(width: 4),
              Text('High School', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Senior High School', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                )
              ),
            ],
          ),
        ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- STI College Batangas (2019-2021)'),
                )
              ),
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text('TVL - Mobile App and Web Development')
                ),
              )
            ],
          ),
        ),
          SizedBox(height: 5),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Junior High School', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                )
              ),
            ],
          ),
        ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Bauan Technical High School (2015-2019)'),
                )
              ),
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text('Computer Systems Servicing, NCII Holder')
                ),
              )
            ],
          ),
        ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.school, size: 18),
              SizedBox(width: 4),
              Text('Elementary', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Gratia de Regina School (2009-2015)')
                )
              )
            ],
          ),
        ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.school, size: 18),
              SizedBox(width: 4),
              Text('Pre-School', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Kinder', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                )
              ),
            ],
          ),
        ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Gratia de Regina School (2008-2009)'),
                )
              ),
            ],
          ),
        ),
          SizedBox(height: 5),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Nursery', style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                )
              ),
            ],
          ),
        ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Poblacion III Day Care Center (2007-2008)'),
                )
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}

class Skills extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.lightbulb_circle, size: 18),
              SizedBox(width: 4),
              Text('Technical Skills', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Web Developing')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Graphical (Photoshop, Canva)')
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.lightbulb_circle, size: 18),
              SizedBox(width: 4),
              Text('Non-Technical Skills', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Leadership Skills')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Teamwork Skills')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Workload Management')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Situation Awareness')
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.lightbulb_circle, size: 18),
              SizedBox(width: 4),
              Text('Certifications and Special Trainings', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Computer Systems Servicing, NCII Certificate')
                ),
              )
            ],
          ),
        ),
        ],
      )
    );
  }
}

class Interests extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            children: [
              Icon(Icons.star_border, size: 18),
              SizedBox(width: 4),
              Text('Professional Interests', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Project Management')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Helping People')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Leadership')
                ),
              )
            ],
          ),
        ),
        Row(
            children: [
              Icon(Icons.search, size: 18),
              SizedBox(width: 4),
              Text('Area of Research', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Human Computer Interaction')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Data Science')
                ),
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('- Health Informatics')
                ),
              )
            ],
          ),
        ),
        ],
      )
    );
  }
}

class ContactInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.phone, size: 18),
              SizedBox(width: 4),
              Text('Phone Number', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('09062764530'),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.email, size: 18),
              SizedBox(width: 4),
              Text('E-mail', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Text('21-02497@g.batstate-u.edu.ph (G-Suite)'),
          Text('itsmeneldineeeee@gmail.com (Personal)'),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.facebook, size: 18),
              SizedBox(width: 4),
              Text('Facebook', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse('https://www.facebook.com/abrahan.johnneldine'))){
                await launchUrl(Uri.parse('https://www.facebook.com/abrahan.johnneldine'));
              } else {
                throw 'Could not launch $Uri';
              }
            },
            child: Text('John Neldine Abrahan',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue,
            ),
          ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.verified, size: 18),
              SizedBox(width: 4),
              Text('X (formerly as Twitter)', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse('#'))){
                await launchUrl(Uri.parse('#'));
              } else {
                throw 'Could not launch $Uri';
              }
            },
            child: Text('@itsmeneldine',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue,
            ),
          ),
          ),
        ],
      )
    );
  }
}



