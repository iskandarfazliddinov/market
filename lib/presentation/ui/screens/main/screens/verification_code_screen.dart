import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.router.maybePop(context);
                },
                child: SvgPicture.asset(
                  AppIcons.back,
                ),
              ),
               Text(
                'Verification Code',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(
                top: 48,
                bottom: 28,
              ),
              child: SvgPicture.asset(AppIcons.otpIcon),
            ),
            Text(
              "OTP Verification",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 64),
            Text(
              "We have sent OTP on your number",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
              child: Pinput(
                keyboardType: TextInputType.number,
                length: 4,
                autofocus: true,
                closeKeyboardWhenCompleted: true,
                obscureText: true,
                obscuringWidget: Icon(Icons.ac_unit),
              ),
            ),
            Text.rich(
              TextSpan(
                text: "Don’t receive a OTP? ",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend OTP",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
