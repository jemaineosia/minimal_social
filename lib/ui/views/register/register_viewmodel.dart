import 'package:minimal_social/app/app.locator.dart';
import 'package:minimal_social/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToLogin() {
    _navigationService.navigateToLoginView();
  }
}
