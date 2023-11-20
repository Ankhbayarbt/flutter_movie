import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();
  final _phoneCtrl = new TextEditingController();
  final _passwordCtrl = new TextEditingController();

  void _onLogin() {
    if (_formKey.currentState!.validate()) {
      print("success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's sign you in",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Welcome back.",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "You've been missed",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: _phoneCtrl,
                  decoration: InputDecoration(
                    label: Text("Утасны дугаар"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Хоосон байж болохгүй";
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  controller: _passwordCtrl,
                  decoration: InputDecoration(
                    label: Text("Нууц үг"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Хоосон байж болохгүй";
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child:
                    ElevatedButton(onPressed: _onLogin, child: Text("Нэвтрэх")))
          ],
        ),
      ),
    );
  }
}
