import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {

  final _fromKey = new GlobalKey<FormState>();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  bool isObscure = true;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("From Validation"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _fromKey,
            child: Column(
              children: [
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Username")
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'username id required';
                    } else if (value.length < 4) {
                      return 'username  must be at least 4 character';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: passwordController,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Password"),
                      suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          isObscure = !isObscure;
                        });
                      }, icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility))
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'password id required';
                    } else if (value.length < 4) {
                      return 'password must be at least 6 characters';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  if(_fromKey.currentState!.validate()){
                    print("Log in successfully");
                  }
                }, child: Text("Log in"))
              ],
            )),
      ),));
  }
}