import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode emailField = FocusNode();
  FocusNode passwordField = FocusNode();
  FocusNode confirmPasswordField = FocusNode();

  // on field submitted user's login credentials are stored here
  late String _email, _password, _confirmPassword;

  //login functionality here
  login(){
    Get.offNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Login to E-Mart",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
      ),
      resizeToAvoidBottomInset: false,
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text("Login to E-Mart",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2,color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2,color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2,color: Colors.red),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Email",
                          labelStyle: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)
                        ),
                        obscureText: false,
                        focusNode: emailField,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(passwordField);
                        },
                        onChanged: (value) {
                          _email = value;
                        },
                        validator: (value) {
                          return  value!.isEmpty ? "Enter Email": null ;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.black),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.red),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)
                        ),
                        obscureText: false,
                        focusNode: passwordField,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(confirmPasswordField);
                        },
                        onChanged: (value) {
                          _password = value;
                        },
                        validator: (value) {
                          return  value!.isEmpty ? "Enter Password": null ;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.black),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2,color: Colors.red),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)
                        ),
                        obscureText: false,
                        focusNode: confirmPasswordField,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).dispose();
                          if(_formKey.currentState!.validate()){
                            login();
                          }
                        },
                        onChanged: (value) {
                          _confirmPassword = value;
                        },
                        validator: (value) {
                          return  value!.isEmpty ? "Confirm Password": null ;
                        },
                      ),
                      TextButton(onPressed: (){
                        // Forgot password
                        Get.toNamed("/forgotPassword");
                      }, child: const Text("Forgot Password?",style: TextStyle(fontSize: 18,color: Colors.deepPurple),)),
                    ],
                  ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          login();
                        }
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                      ),
                      child: const Text("Login",style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Or, Create a new account with",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),),
                  TextButton(onPressed: (){
                    // sign up Navigation
                    Get.toNamed("/signup");
                  }, child: const Text("SignUp",style: TextStyle(fontSize: 18,color: Colors.deepPurple,fontWeight: FontWeight.w600),),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
