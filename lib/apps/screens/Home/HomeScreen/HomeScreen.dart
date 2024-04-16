import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CategoryScreen/Products_Details.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Home Screen",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search bar
              TextField(
                obscureText: false,
                controller: searchController,
                decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.deepPurple),
                  ),
                  suffixIcon: IconButton(onPressed: (){
                    // search functionality
                  }, icon: const Icon(Icons.search,size: 22,color: Colors.black,weight: 5,)),
                ),
                onSubmitted: (value) {
                  // search functionality
                },
              ),

              // carousel slider part 1
              const SizedBox(height: 10),
              CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[600],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    height: 100
                  )
              ),

              // Home Buttons part 1
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Today's Deal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Flash Sale",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),

              // carousel slider part 2
              const SizedBox(height: 10),
              CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[600],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      height: 100
                  )
              ),

              // Home Buttons part 2
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text("Today's Deal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text("Flash Sale",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text("Flash Sale",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                  ),
                ],
              ),

              // Featured categories
              const SizedBox(height: 10),
              const Text("Features Categories",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black)),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Women Dress")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Girls Dress")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Women Watches")),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Boys Glasses")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("Mobile Phones")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const Text("T-Shirts")),
                    ),
                  ],
                ),
              ),

              //Featured Products
              const Text("Featured Products",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black)),
              const SizedBox(height: 10),
              SizedBox(
                height: 245,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Get.to(const Product_Details(title: "Product name"));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
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
                ),
              ),

              // carousel slider part 3
              const SizedBox(height: 10),
              CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[600],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      height: 100
                  )
              ),

              // All Products
              const SizedBox(height: 10),
              const Text("All Products",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.black)),
              const SizedBox(height: 6 ),
              GridView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Get.to(const Product_Details(title: "Product name"));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                itemCount: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
