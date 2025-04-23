import 'package:flutter/material.dart';
import 'interest_controller.dart';
import 'interest_state.dart';

class InterestView extends StatefulWidget {
  const InterestView({super.key});

  @override
  State<InterestView> createState() => _InterestViewState();
}

class _InterestViewState extends State<InterestView> {
  late final InterestController controller;
  final List<Map<String, String>> interests = [
    {'name': 'Photography', 'icon': 'photography.png'},
    {'name': 'Traveling', 'icon': 'traveling.png'},
    {'name': 'Cooking', 'icon': 'cooking.png'},
    {'name': 'Drinking', 'icon': 'drinking.png'},
    {'name': 'Music', 'icon': 'music.png'},
    {'name': 'Gaming', 'icon': 'vdgame.png'},
    {'name': 'Fitness', 'icon': 'fitness.png'},
    {'name': 'Extreme sports', 'icon': 'extreme_sports.png'},
    {'name': 'Art', 'icon': 'art&crafts.png'},
    {'name': 'Shopping', 'icon': 'shopping.png'},
    {'name': 'Swimming', 'icon': 'swimming.png'},
    {'name': 'Speeches', 'icon': 'speeches.png'},
  ];

  @override
  void initState() {
    super.initState();
    controller = InterestController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade500, Colors.purple.shade500],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 150),
              const Center(
                child: Text(
                  'Select Your Interests',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Share your interests with us',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Expanded(
                child: ValueListenableBuilder<InterestState>(
                  valueListenable: controller.state,
                  builder: (context, state, _) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 2.7,
                          ),
                      itemCount: state.selectedInterests.length,
                      itemBuilder: (context, index) {
                        final interest = interests[index];
                        final isSelected = state.selectedInterests[index];
                        return GestureDetector(
                          onTap: () => controller.toggleInterest(index),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.white, Colors.grey.shade200],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              border: Border.all(
                                color:
                                    isSelected
                                        ? Colors.red.shade800
                                        : Colors.white,
                                width: isSelected ? 3 : 1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/${interest['icon']!}',
                                  width: 16,
                                  height: 15,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  interest['name']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
