import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_text_filed_edit.dart';

@RoutePage()
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: (){},
              child: Text(
                "Save",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: Scaffold(
        // backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Stack(
                    children: [
                      Image.asset(
                        AppImages.person,
                        width: 150,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // context.router.push(const EditProfileRoute());
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 4,
                    ),
                    child: Text(
                      "Saul Goodmate",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                    ),
                  ),
                  Text(
                    "saulgo35@gmail.com",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                          color: AppColors.grey,
                        ),
                  ),
                  const SizedBox(height: 50),
                  WTextFiledEdit(
                    textEditingController: TextEditingController(
                      text: "Saul Goodmate",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  WTextFiledEdit(
                    textEditingController: TextEditingController(
                      text: "Saulgo35@gmail.com",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  WTextFiledEdit(
                    textEditingController: TextEditingController(
                      text: "Password",
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  WTextFiledEdit(
                    enabled: false,
                    textEditingController: TextEditingController(
                      text: "20/02/1995",
                    ),
                    keyboardType: TextInputType.datetime,
                    suffixIcon: const Icon(
                      Icons.calendar_today,
                      color: AppColors.primary,
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
