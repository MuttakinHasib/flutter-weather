import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/theme_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar.new(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) => Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: const WidgetStatePropertyAll(Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: WidgetStatePropertyAll(
                    themeProvider.isSelected
                        ? const Icon(Icons.nightlight_round)
                        : const Icon(Icons.wb_sunny),
                  ),
                  value: themeProvider.isSelected,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  }),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Paris',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) => Icon(
                  themeProvider.isSelected ? Icons.nights_stay : Icons.sunny,
                  size: 250,
                  color:
                      themeProvider.isSelected ? Colors.white : Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                '25°C',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'Muttakin Islam Hasib',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.wb_twilight_rounded),
                        Text(
                          'Sunrise',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          '7:30',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 3,
                      ),
                    ),
                    Column(
                      children: [
                        const Icon(Icons.air),
                        Text(
                          'Wind',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          '10 km/h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 3,
                      ),
                    ),
                    Column(
                      children: [
                        const Icon(Icons.thermostat),
                        Text(
                          'Temperature',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          '23°C',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
