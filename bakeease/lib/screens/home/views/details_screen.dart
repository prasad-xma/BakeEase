// import 'package:flutter/cupertino.dart';
import 'package:bakeease/components/macro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.surface),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - (40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 5,
                  ),
                ],
                image: DecorationImage(image: AssetImage('assets/1.png')),
              ),
            ),
            
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                          'Here the titile goese now I can...',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$15.00',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.primary
                                  ),
                                ),

                                Text(
                                  "\$12.00",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough
                                  ),
                                ),
                              ],
                            ),
                          ) 
                        )
                      ],
                    ),

                    SizedBox(height: 12,),
                    Row(
                      children: [
                        MyMacroWidget(
                          title: "Calories", 
                          value: 20, 
                          icon: FontAwesomeIcons.fire
                        ),

                        const SizedBox(width: 10,),
                        MyMacroWidget(
                          title: "Calories", 
                          value: 20, 
                          icon: FontAwesomeIcons.dumbbell
                        ),

                        const SizedBox(width: 10,),
                        MyMacroWidget(
                          title: "Calories", 
                          value: 20, 
                          icon: FontAwesomeIcons.oilWell
                        ),

                        const SizedBox(width: 10,),
                        MyMacroWidget(
                          title: "Calories", 
                          value: 20, 
                          icon: FontAwesomeIcons.breadSlice
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: TextButton(
                        onPressed: () {

                        },
                        style: TextButton.styleFrom(
                          elevation: 3.0,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: const Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
