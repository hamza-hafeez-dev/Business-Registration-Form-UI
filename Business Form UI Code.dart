import 'package:flutter/material.dart';

void main() {
  runApp(Main_bar());
}

class Main_bar extends StatelessWidget {
  const Main_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: height * 0.98,
          width: width * 0.78,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20),
          ),

          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.05,
                      right: width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Business",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),

                        Text(
                          "Register your business to get started",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),

                        SizedBox(height: height * 0.05),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Business name is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: "Business Name",
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Business mail is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: 'Business Mail',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.05),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'User Name is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: 'User Name',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Phone Number is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Enter Your Country is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: 'Country',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        SizedBox(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'ZipCode is required';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                              labelText: 'Zip Code',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: height * 0.03),
                          child: SizedBox(
                            width: width * 0.82,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "Welcome!your businnes is registered",
                                      ),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
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
      ),
    );
  }
}
