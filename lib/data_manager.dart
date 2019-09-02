import 'package:minefocus_base_flutter/minefocus_base_flutter.dart';

class DataManager{

  creatGuestUser(result){
    CreateGuest().request().then(result);
  }
}