import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    AppImages.logo,
                    width: 90,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      bottom: 8,
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const Text(
                    "Create new account",
                    style: TextStyle(color: AppColors.grey, fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Phone number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 48),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Text(
                                " Team of use",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "and",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  " privacy notice",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                        ],
                        text: "By signing below, you agree to the",
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  WBtn(
                    onTap: () {},
                    title: 'Sign Up',
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 18,
                            ),
                          ),
                        ))
                  ],
                  text: "Already have an account? ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
