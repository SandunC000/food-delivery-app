import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/my_button.dart';
import 'package:food_delivery_app/widgets/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Let's Create an account for you",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obsecureText: false,
              ),
              const SizedBox(height: 15),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              const SizedBox(height: 15),
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obsecureText: true,
              ),
              const SizedBox(height: 15),
              MyButton(
                text: "Sign Up",
                onTap: () {},
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login Now',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
