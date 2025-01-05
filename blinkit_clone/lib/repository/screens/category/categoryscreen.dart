import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuit & \nBekery"},
  ];
  var secoundgrocerykitchen = [
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffe"},
    {"img": "image 24.png", "text": "Ice Creams & \nMuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png","text": "Chips & \nNamkeens"},
    {"img": "image 32.png","text": "Sweets & \nChocolates"},
    {"img": "image 33.png","text": "Drinks & \nJuice"},
    {"img": "image 34.png","text": "Sauce & \nSpreads"},
    {"img": "image 35.png","text": "Beuty & \nCosmetics"},
  ];
  var household = [
    {"img": "image 36.png",},
    {"img": "image 37.png",},
    {"img": "image 38.png",},
    {"img": "image 39.png",},
    {"img": "image 40.png",},
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
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold"
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Uihelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14
                        ),
                        Uihelper.CustomText(
                          text: "- Nakano Nino",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14
                        )
                      ],
                    ),
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
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchcontroller)
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold"
              )
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.CustomText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: secoundgrocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.CustomText(
                          text: secoundgrocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secoundgrocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Snacks & Drinks",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold"
              )
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Household Essentials",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14
              )
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: household[index]["img"].toString()),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: household.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}