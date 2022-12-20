import 'package:intl/intl.dart';

class DateFormater {


  String formatDate(String date) {
    if (date != "null") {
      DateTime? parseDate = DateTime.tryParse(date);

      var formatDate = DateFormat();
      String formatedDate = formatDate.add_yMMMEd().format(parseDate ?? DateTime(2022,1,1));
      return formatedDate;
    } else {
      return "Sin fecha";
    }
  }
}




