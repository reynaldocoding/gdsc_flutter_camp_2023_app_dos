import 'package:flutter/material.dart';
import 'package:gdsc_flutter_camp_2023_app_dos/src/presentation/widgets/custom_widget.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: size * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Magna qui minim aute mollit id proident do sit.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              CustomButton(
                text: 'Sign In',
                color: Colors.black,
                textColor: Colors.white,
                onTap: () {
                  //() {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => LoginScreen(),
                  //     ),
                  //   );
                  // },
                  Navigator.pushNamed(context, "/login");
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomButton(
                text: 'Sign Up',
                color: Colors.white,
                textColor: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, "/register");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
