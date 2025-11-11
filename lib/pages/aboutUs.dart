import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';
import 'package:yellow_group_flutterapp/navigation/overView.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();



    return Container(
        color: pageSetup.appBarTheme.backgroundColor,
        child:
        SafeArea(
            child: Scaffold(
                appBar: YellowAppBar(),
                bottomNavigationBar: YellowBottomNav(),
                drawer: YellowDrawerNav(),
              //Everything can be put below here.
               body:
               Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   //principal bio
                   ListTile(
                     title: Text("Our Principal"),
                     subtitle: Text(""),
                   ),
                   //contact info
                   ListTile(
                     title: Text("Contact Us"),
                     subtitle: Text("Phone: 722-839-1000 \n E-mail: questions@wvup.edu"),
                   ),
                   //history
                   ListTile(
                     title: Text("WVUP History"),
                     subtitle: Text(""),
                   ),
                   //divisions
                   ListTile(
                     title: Text("Academic Divisions"),
                     subtitle: Expanded(
                       child: ListView.builder(
                       itemCount: divisions.length,
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                         var division = divisions[index];
                         return ExpansionTile(
                           title: Text(division.name),
                           subtitle: Text('Leader: ${division.leader}'),
                           children: [
                             Text('Contact Information \n Phone: ${division.email} \n E-mail: ${division.email}'),
                           ],
                         );
                       },
                     ),
                     ),
                   ),
                  ],
               ),
            )
        )
    );
  }

  final List<Division> divisions = const [
    Division("Mathematics", "Math Mike", "722-839-1001", "MathDivision@wvup.edu"),
    Division("Biology", "Bio Barbara", "722-839-1002", "BiologyDivision@wvup.edu"),
    Division("Physics", "Physical Fink", "722-839-1003", "PhysicsDivision@wvup.edu"),
    Division("Information Technology", "Info Iggy", "722-839-1111", "IT@wvup.edu"),
  ];
}

class Division
{
  const Division(this.name, this.leader, this.phone, this.email);

  final String name;
  final String leader;
  final String phone;
  final String email;
}


