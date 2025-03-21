/*  Write a function `getDayType(String day)` that:
- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
- Returns "Weekday" otherwise.
- If the input is invalid, return "Invalid day".
 Call the function inside `main()` and print the result.*/



 void main() {
  String day = 'Thursday';
  
  String result = getDayType(day);
  print('The day type is: $result');
}

String getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return 'Weekend';
    default:
      if (['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'].contains(day)) {
        return 'Weekday';
      } else {
        return 'Invalid day';
      }
  }
}
