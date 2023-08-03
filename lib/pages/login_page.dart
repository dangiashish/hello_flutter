import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_flutter/utils/AppColors.dart';
import 'package:hello_flutter/utils/Routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _name = "", _password = "";
  bool changeButton = false;
  bool pressed = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SvgPicture.asset(
            "assets/images/login_img.svg",
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Welcome $_name",
              style: const TextStyle(
                  fontSize: 26,
                  color: Colors.green,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
            child: Column(
              children: [
                Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value) {
                      _name = value;
                      setState(() {});
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                    onChanged: (value) {
                      _password = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // pressed
                        // ? _buildBody(context, _name, _password)
                        Center(
                            child: TextButton(
                                onPressed: () => {
                                      setState(() {
                                        if (_formKey.currentState!.validate()) {
                                          pressed = !pressed;
                                        }
                                      })
                                    },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 16),
                                )),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By clicking on login button, you are accepting our Terms & Conditions and Privacy Policy",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      softWrap: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }






/*FutureBuilder<ResponseData2> _buildBody(
      BuildContext context, String userId, String password) {
    final client = ApiRequest(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: 'https://nodedev.safaimitra.com');

    return FutureBuilder<ResponseData2>(
      future: client.setLogin(userId, password),
      builder: (context, snapshot) {
        print('snapshot error ${snapshot.error}');
        if (snapshot.connectionState == ConnectionState.done) {
          print(snapshot.data?.toJson());
          // Future.delayed(const Duration(seconds: 1));
          // Navigator.pushNamed(context, MyRoutes.home);
          return Center(
            child: TextButton(
                onPressed: () => {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          pressed = !pressed;
                        }
                      })
                    },
                child: Text(
                  "Login",
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
                )),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }*/
}
