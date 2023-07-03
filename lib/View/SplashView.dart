import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/SplashVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SplashVM(),
        builder: (context, viewModel, child) {
          return Scaffold(
              backgroundColor: AppInformation.primaryColor,
              body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage(AppInformation.primaryLogo)),
                    const SizedBox(
                      height: 60,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        viewModel.navigateToInfo();
                      },
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(250, 60),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(
                              color: Colors.white, width: 3.0)),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
