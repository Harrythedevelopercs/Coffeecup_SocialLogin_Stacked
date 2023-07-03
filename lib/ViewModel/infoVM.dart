import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InfoVM extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToSocial(){
    navigationService.navigateToSocialLoginView();
  }
}