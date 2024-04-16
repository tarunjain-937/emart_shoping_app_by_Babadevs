import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Product_Details extends StatelessWidget {
  final String? title;
  const Product_Details({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(title.toString(),style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,size: 22,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,size: 22,color: Colors.white,))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // carousel slider part 1
              const SizedBox(height: 10),
              CarouselSlider.builder(
                  itemCount: 4,
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
                      autoPlay: false,
                      height: 280
                  )
              ),
              // carousel slider indicators

              // Product title
              const SizedBox(height: 10),
              Text(title.toString(),style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),

              // product description
              const SizedBox(height: 10),
              const Text("Product description",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 20),),

              // Product rating bar
              const SizedBox(height: 10),
              RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 5),
                  itemBuilder: (context, index) {
                    return const Icon(Icons.star,color: Colors.amber);
                  },
                  onRatingUpdate: (ratingValue) {
                    // you can save the product rating in firebase
                  },
              ),

              const SizedBox(height: 10),
              const Text("Rs. 1500/-",style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 22),),

              // Add to cart buttons
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      ),
                        child: const Text("Buy Now", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                        child: const Text("Add to cart", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                    ),
                  ),

                ],
              ),

              // Choose colors
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black,width: 1)
                ),
                padding: const EdgeInsets.all(10),
                child:  Row(
                  children: [
                    const Text("Colors:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: (){},
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: (){},
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: (){},
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: (){},
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

              // Choose Quantity
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                padding: const EdgeInsets.all(10),
                child:  Row(
                  children: [
                    const Text("Quantity:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: (){},
                      child:  CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: const Text("+1",style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: (){},
                      child:  CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[400],
                        child: const Text("2",style: TextStyle(fontSize: 22),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: (){},
                      child:  CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: const Text("-1",style: TextStyle(fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              ),

              // Total price
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                padding: const EdgeInsets.all(10),
                child:  const Row(
                  children: [
                    Text("total price:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    SizedBox(width: 20),
                    Text("Rs. 3000/-",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.red),),
                  ],
                ),
              ),

              // Brand Name
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                padding: const EdgeInsets.all(10),
                child:  const Row(
                  children: [
                    Text("Brand name:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    SizedBox(width: 20),
                    Text("Mufi",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                  ],
                ),
              ),

              // Description
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                padding: const EdgeInsets.all(10),
                child:  const Row(
                  children: [
                    Text("Product Description:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    SizedBox(width: 20),
                    Text("Product description",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                  ],
                ),
              ),

              // Products you may also like
              const SizedBox(height: 10),
              const Divider(thickness: 2,color: Colors.grey,indent: 0,endIndent: 0,),
              const Text("Products you may also like.",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 20),),

              const SizedBox(height: 10),
              SizedBox(
                height: 245,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){},
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
            ],
          ),
        ),
      ),
    );
  }
}
