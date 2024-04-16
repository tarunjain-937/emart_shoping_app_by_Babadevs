import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CategoryScreen/Category_Details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Category Screen",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              mainAxisExtent: 180
            ),
            shrinkWrap: true,
            itemCount: 12,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
              onTap: (){
             Get.to(const Category_Details(title: "Category name"));
              },
              child: Column(
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[600]
                    ),
                  ),
                  const Text("Category name")
                ],
              ),
            ),
        ),
      ),
    );
  }
}
