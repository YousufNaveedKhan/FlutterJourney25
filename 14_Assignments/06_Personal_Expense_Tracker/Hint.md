# Personal Expense Tracker – Assignment Hints

I understand that this assignment is challenging. Here are **hints to guide you**. These are references only; you must write your own code.

---

## Core Features Hints

### Splash Screen
```dart
Future.delayed(Duration(seconds: 3), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
});
````

### Authentication (Login & Register)

* Refer to **SharedPreferences** example: [FlutterJourney25/Auth](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/main/lib/auth)
* Keep user logged in:

```dart
SharedPreferences prefs = await SharedPreferences.getInstance();
prefs.setBool('isLoggedIn', true);
bool loggedIn = prefs.getBool('isLoggedIn') ?? false;
```

### Logout

* Clear login state:

```dart
prefs.remove('isLoggedIn');
Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
```

---

## Expense Management Hints

### Expense Model

```dart
class Expense {
  String title;
  double amount;
  String category;
  DateTime dateTime;

  Expense({required this.title, required this.amount, required this.category, required this.dateTime});
}
```

### Add, Edit, Delete (CRUD)

* You can use **Hive** or **Sqflite** for complete CRUD operations.
* Hive reference (CRUD example): [Hive CRUD Example](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/12_Local_Storage/_02_hive/lib)
* Sqflite reference (CRUD example): [Sqflite CRUD Example](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/12_Local_Storage/_03_sqflite/lib)

> Both references include full examples of adding, editing, deleting, and retrieving data.
> Choose whichever storage method you prefer, or explore both.

---

## Analytics & Logic

* Total expenses:

```dart
double total = expenses.fold(0, (sum, item) => sum + item.amount);
```

* Category summary:

```dart
Map<String, double> categorySummary = {};
for (var e in expenses) {
  categorySummary[e.category] = (categorySummary[e.category] ?? 0) + e.amount;
}
```

* Daily/Monthly breakdown:

```dart
var todayExpenses = expenses.where((e) => e.dateTime.day == DateTime.now().day).toList();
```

---

## UI & Navigation

* Multiple screens: Login, Home, Add/Edit, Summary
* Use `Navigator` or `BottomNavigationBar`
* Implicit animations: `AnimatedContainer`, `AnimatedOpacity`

---

## API Integration

* Example with `FutureBuilder`: [FlutterJourney25/API](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/13_API_and_Packages/_01_http_and_api_integration/lib)

```dart
FutureBuilder(
  future: fetchApiData(),
  builder: (context, snapshot) {
    if(snapshot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
    if(snapshot.hasError) return Text('Error: ${snapshot.error}');
    return Text(snapshot.data.toString());
  },
)
```

---

## References

* **Authentication & Logout:** [FlutterJourney25/Auth](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/12_Local_Storage/_01_shared_preferences/lib)
* **Hive CRUD Example:** [FlutterJourney25 Hive](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/12_Local_Storage/_02_hive/lib)
* **Sqflite CRUD Example:** [FlutterJourney25 Sqflite](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/12_Local_Storage/_03_sqflite/lib)
* **API Integration:** [FlutterJourney25/API](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/13_API_and_Packages/_01_http_and_api_integration/lib)
* **Screens & Navigation:** [FlutterJourney25/Screens](https://github.com/YousufNaveedKhan/FlutterJourney25/tree/master/09_Navigation_and_Routing)
* **Overall Repo:** [FlutterJourney25](https://github.com/YousufNaveedKhan/FlutterJourney25)