import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CategoryScreen/Products_Details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category_Details extends StatelessWidget {
  final String? title;
  const Category_Details({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(title!.toString(),
          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
      ),
      body: Container(
        padding: const  EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Sub-Category Buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Baby clothing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.deepPurple),)),
                    ),
                  ],
                ),
              ),

              //Category Products
              const SizedBox(height: 10),
              GridView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:(){
                        Get.to(const Product_Details(title: "Product name"));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius:BorderRadius.circular(8),
                            ),
                          ),
                          const Text(" Product Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          const Text("  RS. 1500/-",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),)
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
