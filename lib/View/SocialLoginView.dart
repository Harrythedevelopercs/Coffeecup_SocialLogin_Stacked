import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/SocialLoginVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SocialLoginView extends StatelessWidget {
  const SocialLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> SocialLoginVM(), builder:(context,viewModel,child){
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/logo2.png')),
              const SizedBox(height: 30,),
              Text("Morning begins with Ombe coffee",style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),textAlign: TextAlign.center,),
              const SizedBox(height: 35,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppInformation.primaryColor,
                  borderRadius: BorderRadius.circular(50)
                ),
              child: Row(
                children: [
                  Icon(Icons.email,color: Colors.white,),
                  SizedBox(width: 35,),
                  Text("Login with email",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),)
                ],
              ),  
              ),
              const SizedBox(height: 35,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xff376AED),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.facebook,color: Colors.white,),
                    const SizedBox(width: 35,),
                    Text("Login with Facebook",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Color(0xff242424),width: 1)
                ),
                child: GestureDetector(
                  onTap: (){
                    viewModel.loginWithGoogle();
                  },
                  child: Row(
                    children: [
                      const Image(image: AssetImage('assets/images/iconGoogle.png')),
                      const SizedBox(width: 35,),
                      Text("Login with Google",style: GoogleFonts.poppins(
                          color: Color(0xff242424),
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
