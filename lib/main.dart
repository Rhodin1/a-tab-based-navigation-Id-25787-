import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const TabScreen());
}

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: WidgetsApp(
        color: Colors.black,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
        ],
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Application'),
                bottom: const TabBar(tabs: [
                  Tab(icon: Icon(Icons.login), text: 'SignIn'),
                  Tab(icon: Icon(Icons.app_registration), text: 'SignUp'),
                  Tab(icon: Icon(Icons.calculate), text: 'Calculator'),
                ]),
              ),
              body: TabBarView(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffB81736),
                        Color(0xff281537),
                      ]),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 22),
                        child: Column(
                          children: [
                            Text(
                              'SIGN IN PAGE',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                  color: Colors.white,
                                ),
                                height: 500,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.email,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Email',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Password',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Forgot Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff281537),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          gradient: LinearGradient(colors: [
                                            Color(0xffB81736),
                                            Color(0xff281537),
                                          ]),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'SIGN IN',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Don't have an account",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "SignUp",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffB81736),
                        Color(0xff281537),
                      ]),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 22),
                        child: Column(
                          children: [
                            Text(
                              'SIGN UP PAGE',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                  color: Colors.white,
                                ),
                                height: 580,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.verified,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'FIRST NAME',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.verified,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'LAST NAME',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.date_range,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'BIRTHDATE',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.email,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Email',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Enter-Password',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Retype-Password',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffB81736),
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          gradient: LinearGradient(colors: [
                                            Color(0xffB81736),
                                            Color(0xff281537),
                                          ]),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'SIGN UP',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Already have an account",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "SignIn",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffB81736),
                        Color(0xff281537),
                      ]),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 22),
                        child: Column(
                          children: [
                            Text(
                              'CALCULATOR',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                  color: Colors.white,
                                ),
                                height: 500,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
