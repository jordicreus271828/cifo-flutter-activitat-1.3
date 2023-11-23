import 'package:flutter/material.dart';

import '../widgets/profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double height = 150;
  double weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Hero(
                  tag: "profile page",
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/women/44.jpg",
                    ),
                  ),
                ),
              ),
              Text(
                'Antònia Font',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'since 20 April 2022',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileCard(
                    iconData: Icons.schedule,
                    label: "Time",
                    value: "2h 45'",
                  ),
                  ProfileCard(
                    iconData: Icons.pin_drop,
                    label: "Km",
                    value: "212,4",
                  ),
                  ProfileCard(
                    iconData: Icons.directions_run,
                    label: "Activities",
                    value: "42",
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Height"),
                  Slider(
                    min: 100,
                    max: 250,
                    value: height,
                    activeColor: Theme.of(context).colorScheme.tertiary,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                  ),
                  Text("${height.toInt()} cm"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Weight"),
                  Slider(
                    min: 40,
                    max: 100,
                    value: weight,
                    activeColor: Theme.of(context).colorScheme.tertiary,
                    onChanged: (value) {
                      weight = value;
                      setState(() {});
                    },
                  ),
                  Text("${weight.toInt()} kg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
