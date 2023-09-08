import 'package:flutter/material.dart';
import 'package:modern_login_flutter/component/fieldForm.dart';
import 'package:modern_login_flutter/component/iconOption.dart';
import 'package:modern_login_flutter/component/loginButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icone lock
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 40,
              ),
              //Texto Bem vindo de volta
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Campo Login
              FieldForm(
                controller: usernameController,
                hintText: "Username",
                obscuredText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //Campo Senha
              FieldForm(
                controller: passwordController,
                hintText: "Password",
                obscuredText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //Esqueceu senha
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Botao login
              const LoginButton(text: "Sign In"),
              const SizedBox(
                height: 50,
              ),
              //Texto continue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //Icones google apple
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconOption(
                    imagePath: "assets/images/google.png",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconOption(
                    imagePath: "assets/images/apple.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //Texto Registrar
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? "),
                  Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
