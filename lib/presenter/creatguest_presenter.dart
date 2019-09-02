import '../creatguest_contract.dart';
import '../data_manager.dart';

class CreatGuestPresenter implements Presenter {
  View _view;

  DataManager _dataManager;

  CreatGuestPresenter(this._view) {
    _view.setPresenter(this);
  }

  @override
  creatGuestUser() {
    _dataManager.creatGuestUser((result) {
      _view.showLoadin();
      if (result.success) {
        _view.hideLoading();
        _view.creatGuestUserSuccess();
      } else {
        _view.hideLoading();
        _view.oncreatGuestUserError();
      }
    });
  }
}
