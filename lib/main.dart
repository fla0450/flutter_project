import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plhrovw/header.dart';
import 'package:plhrovw/food_page.dart';
import 'package:plhrovw/shopping_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFB22B15),
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _validateAndLogin() {
    setState(() {
      final id = _idController.text;
      final password = _passwordController.text;

      if (id.isEmpty && password.isEmpty) {
        _errorMessage = '아이디와 비밀번호를 모두 입력하세요.';
      } else if (id == "root1234" && password == "1234") {
        _errorMessage = '';
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Common_page(),
          ),
        );
      } else {
        _errorMessage = '아이디 또는 비밀번호가 잘못되었습니다.';
      }
    });
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.2),
              Text(
                "MARKETINYOU",
                style: TextStyle(
                  fontSize: screenWidth * 0.12,
                  color: const Color(0xFFB22B15),
                  fontFamily: "Black Han Sans",
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              _buildTextField(_idController, '아이디'),
              SizedBox(height: screenHeight * 0.03),
              _buildTextField(_passwordController, '비밀번호', obscureText: true),
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              SizedBox(height: screenHeight * 0.03),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
      ),
    );
  }

  Widget _buildLoginButton() {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: _validateAndLogin,
      child: Container(
        width: 400,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFB22B15),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text(
          "로그인",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}

class Common_page extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(context),
              Container(
                width: 0.95.sw,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/main_img.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 0.95.sw,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFFECBCB),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Food_page(),
                          ),
                        );
                        print("식사 터치");
                      },
                      child: Container(
                        width: 0.2.sw,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB22B15),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "식사류",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height * 0.02), // 간격 조정
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Shoppig_page(),
                          ),
                        );
                      },
                      child: Container(
                        width: 0.2.sw,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB22B15),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "상점",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "가볍게! 건강하게! 식재료 코너",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.height *0.01),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 0.4.sw,
                            child: Image.asset("assets/images/img1.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width *0.01
                            ),
                            child: Container(
                              width: 0.45.sw,
                              height: 0.3.sw,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFECBCB),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Text(
                                "유기농케일 무농약 안전한 즙용 케일 17,000원 ~",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height *0.02),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 0.4.sw,
                            child: Image.asset("assets/images/img1.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width *0.01
                            ),
                            child: Container(
                              width: 0.45.sw,
                              height: 0.3.sw,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFECBCB),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Text(
                                "유기농케일 무농약 안전한 즙용 케일 17,000원 ~",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
        )
    );
  }
}
