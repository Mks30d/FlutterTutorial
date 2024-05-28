import 'package:flutter/material.dart';

class TextField_Widget extends StatefulWidget {
  const TextField_Widget({super.key});

  @override
  State<TextField_Widget> createState() => _TextField_WidgetState();
}

class _TextField_WidgetState extends State<TextField_Widget> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: 300,
        child: Column(
          children: [
            TextField(
              controller: emailText, // store entered text
              keyboardType: TextInputType.phone, // to popup num pad only

              decoration: InputDecoration(
                  hintText: "Email...",

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.deepOrange,
                      )),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 3, color: Colors.blue)),

//=============== use IconButton when we want to perform click operation
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      // color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),

                  prefixIcon: Icon(
                    Icons.email,
                  )),
            ),
            Container(
              height: 11,
            ),

            // TextField as password
            TextField(
              controller: passText,
              // obscureText: true, // to hide password
              obscureText: isPasswordVisible,
              obscuringCharacter: "*",

              decoration: InputDecoration(
                hintText: "Password...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: Colors.purple,
                        width: 22) // this attribute is not applied
                    ),
                suffixIcon: IconButton(
                  icon: Icon(
                      // Icons.visibility,
                      isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState( () {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
            ),

            TextField(
              enabled: false, // to disable input feature
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.red,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  )),
            ),

            ElevatedButton(
                onPressed: () {
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;
                  print("Email: $uEmail, Password: $uPass");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
    ;
  }
}
