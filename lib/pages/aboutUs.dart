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
      child: SafeArea(
        child: Scaffold(
          appBar: YellowAppBar(),
          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),

                // Contact Us Card
                _buildInfoCard(
                  icon: Icons.phone,
                  iconColor: Colors.blue,
                  title: 'Contact Us',
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactRow(Icons.phone, 'Phone:', '722-839-1000'),
                      SizedBox(height: 8),
                      _buildContactRow(Icons.email, 'Email:', 'questions@wvup.edu'),
                    ],
                  ),
                ),

                // Help Desk Card
                _buildInfoCard(
                  icon: Icons.support_agent,
                  iconColor: Colors.orange,
                  title: 'Contact Help Desk',
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactRow(Icons.phone, 'Phone:', '722-839-1110'),
                      SizedBox(height: 8),
                      _buildContactRow(Icons.email, 'Email:', 'helpdesk@wvup.edu'),
                    ],
                  ),
                ),

                // Principal Bio Card
                _buildInfoCard(
                  icon: Icons.person,
                  iconColor: Colors.purple,
                  title: 'Our Principal',
                  content: Text(
                    "Here is like a paragraph worth of filler text for the purposes of testing block size and length okay? I'm not writing an actual bio for this part of the app.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.grey[700],
                    ),
                  ),
                ),

                // History Card
                _buildInfoCard(
                  icon: Icons.history_edu,
                  iconColor: Colors.green,
                  title: 'WVUP History',
                  content: Text(
                    "Here is like a paragraph worth of filler text for the purposes of testing block size and length okay? I'm not writing an actual history for this part of the app.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.grey[700],
                    ),
                  ),
                ),

                // Academic Divisions Section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        // Section Header
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.indigo[700],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_balance,
                                color: Colors.white,
                                size: 28,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Academic Divisions',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Divisions List
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: divisions.length,
                          separatorBuilder: (context, index) => Divider(height: 1),
                          itemBuilder: (context, index) {
                            var division = divisions[index];
                            return ExpansionTile(
                              leading: CircleAvatar(
                                backgroundColor: _getDivisionColor(index),
                                child: Text(
                                  division.name[0],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(
                                division.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person_outline,
                                      size: 16,
                                      color: Colors.grey[600],
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      division.leader,
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(16),
                                  color: Colors.grey[50],
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Contact Information',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      _buildContactRow(
                                        Icons.phone_outlined,
                                        'Phone:',
                                        division.phone,
                                      ),
                                      SizedBox(height: 8),
                                      _buildContactRow(
                                        Icons.email_outlined,
                                        'Email:',
                                        division.email,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom padding
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required Widget content,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: iconColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor,
                      size: 28,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              content,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Colors.grey[600]),
        SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
            ),
          ),
        ),
      ],
    );
  }

  Color _getDivisionColor(int index) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.red,
    ];
    return colors[index % colors.length];
  }

  final List<Division> divisions = const [
    Division("Mathematics", "Math Mike", "722-839-1001", "MathDivision@wvup.edu"),
    Division("Biology", "Bio Barbara", "722-839-1002", "BiologyDivision@wvup.edu"),
    Division("Physics", "Physical Fink", "722-839-1003", "PhysicsDivision@wvup.edu"),
    Division("Information Technology", "Info Iggy", "722-839-1111", "IT@wvup.edu"),
    Division("Computer Science", "CS Carl", "722-839-1004", "CSDivision@wvup.edu"),
    Division("Physical Arts", "Info Iggy", "722-839-1005", "PArtDivision@wvup.edu"),
  ];
}

class Division {
  const Division(this.name, this.leader, this.phone, this.email);

  final String name;
  final String leader;
  final String phone;
  final String email;
}