import 'package:minefocus_base_flutter/minefocus_base_flutter.dart';

import '../creatguest_contract.dart';


class CreatGuestPresenter implements Presenter {
  View view;

  CreatGuestPresenter(this.view);

  @override
  creatGuestUser()  {
    view.showLoadin();
    CreateGuest().request().then((result){
      if (result.success) {
        view.hideLoading();
        view.creatGuestUserSuccess();
      } else {
        view.hideLoading();
        view.oncreatGuestUserError();
      }
    });
  }
}
