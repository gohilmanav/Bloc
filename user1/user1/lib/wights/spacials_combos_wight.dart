import 'package:flutter/material.dart';
import 'package:user1/models/spacials_combos_model.dart';
import 'package:user1/ui/Cart/Cart.dart';

// ignore: must_be_immutable
class SpacialsCombosWight extends StatelessWidget {
  SpacialsCombosWight({Key? key, required this.spacial}) : super(key: key);

  SpacialsCombosModel spacial;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        //color: Colors.black,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('${spacial.imageUrl}'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105, left: 5),
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            " ${ spacial.description}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      GestureDetector(onLongPress: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${spacial.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
