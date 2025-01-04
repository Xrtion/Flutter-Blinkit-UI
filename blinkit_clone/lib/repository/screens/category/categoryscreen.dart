import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {
      "img": "images 41.png",
      "text": "Vegetables & \nFruits"
    },
    {
      "img": "images 42.png",
      "text": "Atta, Dal & \nRice"
    },
    {
      "img": "images 43.png",
      "text": "Oil, Ghee & \nMasala"
    },
    {
      "img": "images 44.png",
      "text": "Dairy, Bread & \nMilk"
    },
    {
      "img": "images 45.png",
      "text": "Biscuit & \nBekery"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Uihelper.CustomText(
                          text: "Blinkit in", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 15,
                          fontfamily: "bold"
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Uihelper.CustomText(
                          text: "16 minute", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 20,
                          fontfamily: "bold"
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Uihelper.CustomText(
                          text: "Home", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 14,
                        ),
                        Uihelper.CustomText(
                          text: "- sujal Dave, Ratanada Jodpur (Raj)", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 14,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                )
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController)
              )
            ],
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Gorcery & Kitchen", 
                color: Colors.black, 
                fontweight: FontWeight.bold, 
                fontsize: 14,
                fontfamily: "bold"
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // SizedBox(
          //   height: 78,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20),
          //     child: ListView.builder(itemBuilder: (context,index){
          //       return Column(
          //         children: [
          //           Container(
          //             height: 78,
          //             width: 71,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Color(0XFFD9EBE)
          //             ),
          //             child: Uihelper.CustomImage(img: grocerykitchen[index]["img"].toString()),
          //           ),
          //         ],
          //       );
          //     },itemCount: grocerykitchen.length, scrollDirection: Axis.horizontal,),
          //   ),
          // )
        ],
      ),
    );
  }
}