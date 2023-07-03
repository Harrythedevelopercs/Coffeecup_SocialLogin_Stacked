import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/SplashVM.dart';
import 'package:cofffecup/ViewModel/infoVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=>InfoVM(), builder: (context,viewModel,child){
       return Scaffold(
         backgroundColor: Colors.white,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/coffeecup.jpg'),
                      fit: BoxFit.contain
                    )
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: PageView(
                    physics: PageScrollPhysics(),
                    children: [

                      sliders(
                          "Let’s meet our summer coffee drinks",
                          "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                          [true,false,false]
                      ),
                      sliders(
                          "Let’s meet our summer coffee drinks",
                          "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                          [false,true,false]
                      ),
                      sliders(
                          "Let’s meet our summer coffee drinks",
                          "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                          [false,false,true]
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(150, 60)
                      ), child: Text("Go Back",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),)),
                      ElevatedButton(onPressed: (){
                        viewModel.navigateToSocial();
                      },style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(150, 60),
                        backgroundColor: AppInformation.primaryColor
                      ), child: Text("Next",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                      ),))
                    ],
                  ),
                )
              ],
            ),
          ),
       );
    });
  }
}

Widget sliders(String title,String description,List<bool> isActive){
  return  Container(
    padding: const EdgeInsets.only(right: 25,left: 25),
    width: double.infinity,
    height: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${title}",style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: const Color(0xff1B1B1B),
        ),textAlign: TextAlign.center,),
        const SizedBox(
          height: 15,
        ),
        Text("${description}",style: GoogleFonts.poppins(
            fontSize: 14
        ),textAlign: TextAlign.center,),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: (isActive[0] == true) ? 30 : 10,
              height: 10,
              decoration: BoxDecoration(
                color: (isActive[0] == true) ? Color(0xff04764E) : Color(0xffD3D3D3),
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: (isActive[1] == true) ? 30 : 10,
              height: 10,
              decoration: BoxDecoration(
                color: (isActive[1] == true) ? Color(0xff04764E) : Color(0xffD3D3D3),
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: (isActive[2] == true) ? 30 : 10,
              height: 10,
              decoration: BoxDecoration(
                color: (isActive[2] == true) ? Color(0xff04764E) : Color(0xffD3D3D3),
                borderRadius: BorderRadius.circular(50)
              ),
            ),
          ],
        )
      ],
    ),
  );
}