import 'package:demo/constant/config.dart';
import 'package:demo/model/user.dart';
import 'package:demo/widget/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void init() async {
    await Future.delayed(const Duration(seconds: 3));
    print('go!');
    FlutterNativeSplash.remove();
  }

  List<UserModel> users = [
    UserModel(name: "Panhavorn", email: "Email@gmail.com"),
    UserModel(name: "Alice Johnson", email: "alice.johnson@example.com"),
    UserModel(name: "Bob Smith", email: "bob.smith@example.com"),
    UserModel(name: "Charlie Brown", email: "charlie.brown@example.com"),
    UserModel(name: "David Wilson", email: "david.wilson@example.com"),
    UserModel(name: "Eva Adams", email: "eva.adams@example.com"),
    UserModel(name: "Frank Clark", email: "frank.clark@example.com"),
    UserModel(name: "Grace Lee", email: "grace.lee@example.com"),
    UserModel(name: "Henry White", email: "henry.white@example.com"),
    UserModel(name: "Isabella Taylor", email: "isabella.taylor@example.com"),
    UserModel(name: "Jack Harris", email: "jack.harris@example.com"),
    UserModel(
        name: "Katherine Martinez", email: "katherine.martinez@example.com"),
    UserModel(name: "Liam Thompson", email: "liam.thompson@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
    UserModel(name: "Mia Jackson", email: "mia.jackson@example.com"),
    UserModel(name: "Noah Lewis", email: "noah.lewis@example.com"),
    UserModel(name: "Olivia Robinson", email: "olivia.robinson@example.com"),
    UserModel(name: "Paul Walker", email: "paul.walker@example.com"),
    UserModel(name: "Quincy Hall", email: "quincy.hall@example.com"),
    UserModel(name: "Rachel Young", email: "rachel.young@example.com"),
    UserModel(name: "Samuel Allen", email: "samuel.allen@example.com"),
    UserModel(name: "Tina King", email: "tina.king@example.com"),
    UserModel(name: "Ursula Scott", email: "ursula.scott@example.com"),
    UserModel(name: "Victor Adams", email: "victor.adams@example.com"),
    UserModel(name: "Wendy Carter", email: "wendy.carter@example.com"),
    UserModel(name: "Xander Bennett", email: "xander.bennett@example.com"),
    UserModel(name: "Yvonne Green", email: "yvonne.green@example.com"),
    UserModel(name: "Zachary Perez", email: "zachary.perez@example.com"),
    UserModel(name: "Anna Turner", email: "anna.turner@example.com"),
    UserModel(name: "Brian Nguyen", email: "brian.nguyen@example.com"),
    UserModel(
        name: "Catherine Hernandez", email: "catherine.hernandez@example.com"),
    UserModel(name: "Derek Rivera", email: "derek.rivera@example.com"),
    UserModel(name: "Emily Sanchez", email: "emily.sanchez@example.com"),
    UserModel(name: "Felix Cox", email: "felix.cox@example.com"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Column(
          children: [
            Text('${AppConfig.appConfig.flavor}'),
          ],
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserTile(users: users[index]);
        },
      )),
    );
  }
}
