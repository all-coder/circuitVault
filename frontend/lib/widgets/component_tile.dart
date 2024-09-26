import 'package:flutter/material.dart';
import '../models/component.dart';

class ComponentTile extends StatefulWidget {
  const ComponentTile({required this.component, super.key});
  final Component component;
  @override
  State<StatefulWidget> createState() {
    return _ComponentTileState();
  }
}

class _ComponentTileState extends State<ComponentTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff2F2E2E)),
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      width: (MediaQuery.of(context).size.width / 2 - 20).toDouble(),
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 120,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 5, 1),
            child: const Text(
              "Raspberry Pi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 5, 3),
            child: const Text(
              "In Stock : 2",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Color(0xff484848)),
            height: 30,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Positioned(
                  top: -3,
                  left: 4,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.minimize,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: (MediaQuery.of(context).size.width / 2 - 70).toDouble(),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 3,
                  left: ((MediaQuery.of(context).size.width / 2 - 50) / 2)
                      .toDouble(),
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
