import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: Stack(
          children: [
            Positioned(
              top: 40,
              right: -10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildRoundedPill(120, Color(0xFFB7386E)),
                  SizedBox(height: 10),
                  _buildRoundedPill(100, Color(0xFFE62C30)),
                  SizedBox(height: 10),
                  _buildRoundedPill(80, Color(0xFFFF914D)),
                  SizedBox(height: 10),
                  _buildRoundedPill(60, Color(0xFFFFDE59)),
                ],
              ),
            ),
            Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 520),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  // Ação a ser executada ao pressionar o botão "Sign up"
                  print('Botão "Sign up" pressionado!');
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, // Cor do texto interativo
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildRoundedPillWithLabel(250, Color(0xFFEAEAEA), 'E-mail',
                      isPassword: false),
                  SizedBox(height: 20),
                  _buildRoundedPillWithLabel(250, Color(0xFFEAEAEA), 'Password',
                      isPassword: true),
                  SizedBox(height: 20),
                  _buildRoundedPillButton(150, Color(0xFFEAEAEA), 'Next',
                      textColor: Colors.black, onPressed: () {
                    // Ação a ser executada ao pressionar o botão "Next"
                    print('Botão "Next" pressionado!');
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundedPill(double size, Color color) {
    return Container(
      width: size,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget _buildRoundedPillWithLabel(double size, Color color, String label,
      {bool isPassword = false, TextAlign textAlign = TextAlign.start}) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: size,
          height: 40,
          child: TextField(
            obscureText:
                isPassword, // Define se o campo é oculto (senha) ou não
            decoration: InputDecoration(
              filled: true,
              fillColor: color,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRoundedPillButton(double size, Color color, String label,
      {Color textColor = Colors.white, VoidCallback? onPressed}) {
    return Container(
      width: size,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
