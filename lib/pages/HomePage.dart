import 'package:flutter/material.dart';

import '../Log_In.dart';
import '../service/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: ListView(
       children: [
         Container(
           padding: const EdgeInsets.all(10),
           child: Column(
             children: [
               const SizedBox(height: 50,),
               Center(
                 child: Container(
                   height: 200,
                   width: 200,
                   child: const Image(
                     image: AssetImage("assets/images/registrator.jpeg"),

                   ),
                 ),
               ),
               Column(
                 children:  [
                   const Text(
                     "Welcome back!",
                     style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                   const SizedBox(height: 10,),
                   const Text(
                     "Log in to your existant accaunt of Q Allure",
                     style: TextStyle(
                         color: Colors.grey
                     ),
                   ),
                   /////////////////////////////////////////
                   //search
                   const SizedBox(height: 40,),
                   Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.white,

                       borderRadius: BorderRadius.circular(20),
                     ),
                     child:  TextField(
                       controller: emailController,
                       decoration: InputDecoration(
                         hintText:"user@gmail.com",
                         prefixIcon: const Icon(
                           Icons.perm_identity_sharp,
                         ),
                         border: InputBorder.none,
                         enabledBorder: OutlineInputBorder(
                           borderSide: const BorderSide(width: 3,color: Colors.blue,),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: const BorderSide(
                             width: 3,
                             color: Colors.black45,

                           ),
                           borderRadius: BorderRadius.circular(20),
                         ),
                       ),

                     ),
                   ),
                   const SizedBox(height: 20,),
                   Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child:  TextField(
                     controller: passwordController,
                       decoration: InputDecoration(
                         hintText: "Password",
                         prefixIcon: const Icon(
                           Icons.lock_outline_rounded,
                         ),
                         border: InputBorder.none,
                         enabledBorder: OutlineInputBorder(
                           borderSide: const BorderSide(width: 3,color: Colors.blue,),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: const BorderSide(
                             width: 3,
                             color: Colors.cyan,

                           ),
                           borderRadius: BorderRadius.circular(20),
                         ),
                       ),

                     ),
                   ),
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(
                       onPressed: (){},
                       child: const Text("Forget Password?"),
                     ),
                   ),
                   //login
                   Container(
                     height: 50,
                     width: 200,
                     decoration: BoxDecoration(
                       color: Colors.blue.shade900,
                       borderRadius: BorderRadius.circular(20),

                     ),
                     child: Container(
                       child: TextButton(
                         onPressed: (){
                           dataService();
                           dateService1();
                         },
                         child: const Text(
                           "LOG IN",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold),
                         ),
                       ),
                     ),

                   ),
                   const SizedBox(height: 30,),
                   const Text(
                     "Or connect using ",
                     style: TextStyle(
                         color: Colors.black45
                     ),
                   ),
                   const SizedBox(height: 30,),
                   //facebook
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child:Row(
                            children: [
                              Icon(Icons.facebook,color: Colors.blueAccent.shade700,),
                               TextButton(
                                onPressed: (){},
                                child: Text("facebook",style: TextStyle(color: Colors.white),),
                               ),
                            ],
                          )
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,

                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                            onPressed: (){},
                            child:Row(
                              children: [
                                IconButton(
                                  padding: const EdgeInsets.all(.1),
                                  onPressed: (){},
                                  icon: Icon(Icons.g_mobiledata_outlined,color: Colors.blue.shade900,size: 40,),
                                ),
                                const Text(
                                  "Google",
                                  style: TextStyle(
                                      color: Colors.white),
                                ),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                   const SizedBox(height: 100,),
                   //Google
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      const Center(
                        child:  Text("Don't an account?"),
                      ),
                       TextButton(
                         onPressed: (){
                          Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const SecondRoute()),
                   );
                     },

                         child: const Text(
                           "Sign Up",
                           style: TextStyle(
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ),
                     ],
                   ),

                 ],
               ),
             ],
           ),
         ),
       ],
     )
    );
  }
  void dataService(){
    PrefsService.storeName("Email: ${emailController.text}");
  PrefsService.loadName().then((value) => {
  // ignore: avoid_print
  print(value),
  });
}
void dateService1(){
  PrefsService.storeName("Password: ${passwordController.text}");
  PrefsService.loadName().then((value) => {
    // ignore: avoid_print
    print(value),
  });
}




}
