import 'package:demo_app_commerce/utilites/routes.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var name = '';
  bool animate = false;

  final _appsetloop = GlobalKey<FormState>();

  joy(BuildContext context) async {
    {
      if (_appsetloop.currentState!.validate()) {
        setState(() {
          animate = true;
        });
        await Future.delayed(
          Duration(seconds: 1),
        );
        await Navigator.pushNamed(context, MyAppRoutes.HomeRoutes);
        setState(() {
          animate = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Image.asset(
            'assets/image/a2.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Welcome $name',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: _appsetloop,
              child: Column(
                children: [
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'username please enter';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 81, 74, 218))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 81, 74, 218))),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 81, 74, 218)),
                        hintText: 'Username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password ';
                      }
                      if (value.length < 10) {
                        return 'Please enter minimum 10 character password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(81, 74, 218, 1)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 81, 74, 218))),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 81, 74, 218)),
                        hintText: 'Password',
                        helperText: 'AA/aa/@'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () => joy(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: animate ? 50 : 100,
                      height: 50,
                      child: animate
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(animate ? 30 : 10),
                        color: Color.fromARGB(255, 107, 99, 255),
                      ),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
