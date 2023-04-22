import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

var nformat = NumberFormat('###,###,###,###');

void showToast(){
  Fluttertoast.cancel();
  Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_SHORT);
}