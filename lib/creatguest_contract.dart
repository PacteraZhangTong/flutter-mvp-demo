import 'base/IBasePresenter.dart';
import 'base/IBaseView.dart';

abstract class Presenter implements IBasePresenter {
  creatGuestUser();
}

abstract class View implements IBaseView<Presenter> {
  void creatGuestUserSuccess();

  void oncreatGuestUserError();

  showLoadin();

  hideLoading();
}
