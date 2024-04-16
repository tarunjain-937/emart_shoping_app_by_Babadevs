import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode emailField = FocusNode();
  FocusNode usernameField = FocusNode();
  FocusNode passwordField = FocusNode();
  FocusNode confirmPasswordField = FocusNode();

  // on field submitted user's login credentials are stored here
  late String _email, _password, _confirmPassword, _username;

  //signup functionality here
  signUp(){
    Get.offNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("SignUp to E-Mart",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
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
              const Text("SignUp to E-Mart",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: usernameController,
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
                          labelText: "Username",
                          labelStyle: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)
                      ),
                      obscureText: false,
                      focusNode: usernameField,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(emailField);
                      },
                      onChanged: (value) {
                        _username = value;
                      },
                      validator: (value) {
                        return  value!.isEmpty ? "Enter Username": null ;
                      },
                    ),
                    const SizedBox(height: 10),
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
                          signUp();
                        }
                      },
                      onChanged: (value) {
                        _confirmPassword = value;
                      },
                      validator: (value) {
                        return  value!.isEmpty ? "Confirm Password": null ;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      signUp();
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                  ),
                  child: const Text("SignUp",style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),),
                  TextButton(onPressed: (){
                    // login Navigation
                    Get.back();
                  }, child: const Text("Login",style: TextStyle(fontSize: 18,color: Colors.deepPurple,fontWeight: FontWeight.w600),),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
