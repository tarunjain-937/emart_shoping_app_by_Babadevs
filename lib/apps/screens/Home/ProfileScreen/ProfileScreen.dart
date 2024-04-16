import 'package:emart_ecommerce_app_baba_devs/apps/Controller/authController.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/authScreen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Profile Screen",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.edit,size: 22,color: Colors.white,))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              // user profile, name, email and logout button
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      // edit profile functionality
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User name
                      Text("Dummy User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      // users email
                      Text("DummyUserEmail@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 20,
                    ),
                  ),

                  // Logout Button
                  ElevatedButton(onPressed: () async{
                    await Get.put(AuthController()).signOutMethod();
                    Get.offAll(()=> LoginScreen());
                  },
                      child: const Text("Log Out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                ],
              ),

              // items in your cart, your wishlist, your orders
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Text("00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2),
                          Text("In Your Cart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Text("00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2),
                          Text("In Your Wishlist",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Text("00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2),
                          Text("Your Orders",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              // profile screen buttons
              const SizedBox(height: 5),
              const Divider(
                color: Colors.grey,
                endIndent: 0,
                indent: 0,
                thickness: 2,
              ),
              const SizedBox(height: 5),

              // My orders
              ListTile(
                onTap: (){},
                leading: const Icon(Icons.shopping_bag_outlined,size: 22,color: Colors.black,),
                trailing: const Icon(Icons.arrow_forward_ios_sharp,size: 22,color: Colors.black,),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.black,width: 1)),
                title: const Text("My Orders",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),),
              ),

              // My wishlist
              const SizedBox(height: 10),
              ListTile(
                onTap: (){},
                leading: const Icon(Icons.favorite_border_outlined,size: 22,color: Colors.black,),
                trailing: const Icon(Icons.arrow_forward_ios_sharp,size: 22,color: Colors.black,),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.black,width: 1)),
                title: const Text("My Wishlist",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),),
              ),

              // messages
              const SizedBox(height: 10),
              ListTile(
                onTap: (){},
                leading: const Icon(Icons.message_rounded,size: 22,color: Colors.black,),
                trailing: const Icon(Icons.arrow_forward_ios_sharp,size: 22,color: Colors.black,),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.black,width: 1)),
                title: const Text("Messages",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),),
              ),

              // space between
               const Expanded(
                 child: SizedBox(
                  height: 10,
                 ),
               ),

              // application developed by
              const Text("Developed by: Tarun jain",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),),

            ],
          ))
    );
  }
}
