import 'package:flutter/material.dart';
import '../widgets/filters.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2E9E4),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                // Left-side menu icon
                Positioned(
                  left: 10,
                  top: 15,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff2F2E2E),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Search Field with custom UI
                Positioned(
                  left: 65,
                  top: 12,
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    width: 280,
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white, // Text color
                      ),
                      decoration: InputDecoration(
                        hintText: "search",
                        hintStyle: const TextStyle(
                          color: Colors.white, // Hint text color
                          fontSize: 18,
                        ),
                        filled: true,
                        fillColor: const Color(0xff2F2E2E), // Background color
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                // Right-side menu icon
                Positioned(
                  top: 15,
                  left: (MediaQuery.of(context).size.width - 60).toDouble(),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff2F2E2E),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Filter(),
        ],
      ),
    );
  }
}
