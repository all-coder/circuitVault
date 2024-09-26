import 'package:flutter/material.dart';
import 'package:frontend/models/component.dart';
import '../widgets/filters.dart';
import '../widgets/component_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

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
                  Positioned(
                    left: 10,
                    top: 15,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.fromLTRB(10, 10, 14, 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff2F2E2E),
                      ),
                      child: const Icon(
                        Ionicons.menu_outline,
                        color: Colors.white,
                        size: 30,
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
                        style: GoogleFonts.ubuntuMono(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Ionicons.search_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                          hintText: "search",
                          hintStyle: GoogleFonts.ubuntuMono(
                            color: Colors.white,
                            fontSize: 25,
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff2F2E2E),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 8,
                            top: 8,
                            child: Icon(
                              Icons.shopify,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            top: 30.5,
                            right: 1,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xffE25353)),
                              child: Text(
                                "3",
                                style: GoogleFonts.firaMono(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
