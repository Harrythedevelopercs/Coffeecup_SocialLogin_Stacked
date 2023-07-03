import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';

class SocialLoginVM extends BaseViewModel{


  loginWithGoogle() async {
    await FirebaseService.signInWithGoogle();
  }



}
