import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                    padding: const EdgeInsets.only(top: 30, bottom: 8),
                    child: Text(
                      "Reset",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          
                          fontSize: 32),
                    ),
                  ),
                  Text(
                    "Reset your password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.grey, fontSize: 18),
                  ),
                ],
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Your New Password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "New password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              WBtn(
                onTap: () {},
                title: 'Change Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
