import 'package:flutter/material.dart';
import 'package:frontend/models/component.dart';
import '../widgets/filters.dart';
import '../widgets/component_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2E9E4),
      body: SingleChildScrollView(
        child: Column(
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
                      height: 50,
                      width: 50,
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
                  Positioned(
                    left: 65,
                    top: 14,
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 280,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                          hintText: "search",
                          hintStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          filled: true,
                          fillColor: const Color(0xff2F2E2E),
                          contentPadding:
                              const EdgeInsets.fromLTRB(0, 0, 55, 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 14,
                    left: (MediaQuery.of(context).size.width - 60).toDouble(),
                    child: Container(
                        height: 50,
                        width: 50,
                        //padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff2F2E2E),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30.5,
                              right: 1,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red,
                                ),
                                child: const Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const Filter(),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                ComponentTile(
                  component: Component(
                      name: "Resistor",
                      available: 4,
                      id: 56,
                      datasheetLink: "nothing",
                      description: "A resistor is used for resisting current",
                      imageURL: "nothing here"),
                ),
                ComponentTile(
                  component: Component(
                      name: "Resistor",
                      available: 4,
                      id: 56,
                      datasheetLink: "nothing",
                      description: "A resistor is used for resisting current",
                      imageURL: "nothing here"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
