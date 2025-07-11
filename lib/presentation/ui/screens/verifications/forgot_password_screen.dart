import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/screens/verifications/reset_password.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';
@RoutePage()
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    AppImages.logo,
                    width: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 8),
                    child: Text(
                      "Forget",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          
                          fontSize: 32),
                    ),
                  ),
                  Text(
                    "Forget your password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.grey, fontSize: 18),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """Please enter your email address below
you will receive a link to create a new 
password via email""",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(

                      
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 60),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Email address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              WBtn(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPassword(),),);
                },
                title: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
