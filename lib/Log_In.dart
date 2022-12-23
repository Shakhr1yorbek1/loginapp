import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/service/prefs_service.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController createController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 411,
                  height: 200,
                  color: Colors.white,

                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: const [
                          Text("Let's Get Started!", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),),
                          SizedBox(height: 5,),
                          Text(
                            "Create an account to Q Allure to get all faetures",
                            style: TextStyle(
                                color: Colors.black38, fontSize: 15),),

                        ],
                      )
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: TextField(
                    controller:createController,
                    decoration: InputDecoration(
                      hintText: "Jhone Williams",
                      prefixIcon: const Icon(
                        Icons.perm_identity_sharp,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3, color: Colors.blue,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black45,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),

                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: TextField(
                  controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      suffixStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3, color: Colors.blue,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black45,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),

                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: TextField(
                  controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Phone",
                      suffixStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                      prefixIcon: const Icon(
                        Icons.phone_android,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3, color: Colors.blue,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black45,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),

                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: TextField(
                  controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3, color: Colors.blue,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black45,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),

                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: TextField(
                    controller: cpasswordController,
                    decoration: InputDecoration(
                      hintText: "Coniform password",
                      suffixStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3, color: Colors.blue,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black45,

                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                  ),

                ),
                //tugma
                const SizedBox(height: 40,),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {
                      dateService1();
                      dateService2();
                      dateService3();
                      dateService4();
                      dateService5();
                    },
                    child: const Text("CREATE", style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  ),

                ),
                const SizedBox(height: 30,),
                //login here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text("Aleadey have an account?",
                        style: TextStyle(color: Colors.black45),),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Login here", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                  ],
                )
              ],
            ),
          ],
        )
    );
  }

  void dateService1() {
    PrefsService.storeName("name: ${createController.text}");
    PrefsService.loadName().then((value) =>
    {
      // ignore: avoid_print
      print(value),
    });
  }

  void dateService2() {
    PrefsService.storeName("email: ${emailController.text}");
    PrefsService.loadName().then((value) =>
    {
      // ignore: avoid_print
      print(value),
    });
  }

  void dateService3() {
    PrefsService.storeName("phone: ${phoneController.text}");
    PrefsService.loadName().then((value) =>
    {
      // ignore: avoid_print
      print(value),
    });
  }

  void dateService4() {
    PrefsService.storeName("password: ${passwordController.text}");
    PrefsService.loadName().then((value) =>
    {
      // ignore: avoid_print
      print(value),
    });
  }

  void dateService5() {
    PrefsService.storeName("coniformpassword: ${cpasswordController.text}");
    PrefsService.loadName().then((value) =>
    {
      // ignore: avoid_print
      print(value),
    });
  }
}
