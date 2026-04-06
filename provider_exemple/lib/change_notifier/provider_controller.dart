
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTeG8Qjn1-mbtMXDdOLjwrmi8DJLpJIU73NA&s';
  String birthDate = 'Data';

void changeData(){
  name = 'Loid';
  birthDate = '05/05/1991';
  notifyListeners();
}
}