# Widget Tree & build() Method in Flutter

Flutter applications are built using **widgets**.
Every single thing you see on the screen — text, button, padding, layout — is a widget.

To understand Flutter properly, you must understand **Widget Tree** and the **build() method**.

---

## What is a Widget Tree?

A **Widget Tree** is a hierarchical structure of widgets.

Each widget:
- Can have a **parent**
- Can have **children**
- Is connected in a tree-like structure

Flutter renders UI by walking through this tree.

---

## Simple Widget Tree Visualization

Consider this Flutter code:

```dart
MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Home"),
    ),
    body: Center(
      child: Text("Hello Flutter"),
    ),
  ),
);
````

### Visual Tree Representation

```
MaterialApp
 └── Scaffold
     ├── AppBar
     │    └── Text("Home")
     └── Center
          └── Text("Hello Flutter")
```

➡️ This structure is called the **Widget Tree**

---

## Important Rule

> Flutter UI is NOT drawn line by line
> Flutter UI is drawn by building a **tree of widgets**

---

## The build() Method

Every widget (Stateless or Stateful) has a `build()` method.

### Purpose of build()

* Describes **how the UI should look**
* Returns a **widget**
* Called automatically by Flutter

Example:

```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Text("Hello"),
    ),
  );
}
```

📌 The `build()` method does NOT draw UI directly
📌 It **returns widgets**, Flutter draws them

---

## build() Method Flow (Conceptual)

```
State Change
     ↓
build() method called
     ↓
Widget Tree rebuilt
     ↓
UI updated
```

---

## Widget Tree with Multiple Children

Example:

```dart
Column(
  children: [
    Text("Title"),
    SizedBox(height: 20),
    ElevatedButton(
      onPressed: () {},
      child: Text("Click"),
    ),
  ],
);
```

### Tree Diagram

```
Column
 ├── Text("Title")
 ├── SizedBox
 └── ElevatedButton
      └── Text("Click")
```

---

## Parent & Child Relationship

Rules:

* Some widgets accept **only one child** (e.g. Center, Padding)
* Some widgets accept **multiple children** (e.g. Column, Row, ListView)

### One Child Example

```dart
Center(
  child: Text("Single Child"),
);
```

### Multiple Children Example

```dart
Row(
  children: [
    Icon(Icons.star),
    Text("Rating"),
  ],
);
```

---

## Everything is a Widget

Even layout, spacing, alignment — everything is a widget.

Examples:

* Padding → widget
* Center → widget
* SizedBox → widget
* GestureDetector → widget

This is why Flutter UI is **consistent and predictable**

---

## Stateless vs Stateful in Widget Tree

### Stateless Widget

* UI depends on fixed data
* build() runs once (unless parent rebuilds)

### Stateful Widget

* UI depends on changing data
* build() runs every time `setState()` is called

Example rebuild trigger:

```dart
setState(() {
  counter++;
});
```

This causes:

```
setState()
   ↓
build() called
   ↓
Widget Tree rebuilt
```

---

## Visualizing Rebuild Scope

Important concept:

> Only the widget whose state changes and its children are rebuilt

```
MaterialApp
 └── Scaffold
     ├── StaticWidget   ❌ Not rebuilt
     └── CounterWidget  ✅ Rebuilt
```

Flutter is optimized and efficient.

---

## Common Beginner Mistakes

❌ Thinking Flutter UI is screen-based
❌ Thinking widgets are heavy objects
❌ Misunderstanding rebuild as full app reload

✅ Flutter rebuilds **widgets, not the entire app**

---

## Mental Model to Remember

Think of Flutter UI like **nested boxes**:

```
Box
 └── Box
      └── Box
           └── Text
```

Each box is a widget.

---

## Key Takeaways

* Flutter UI is a **Widget Tree**
* build() method returns widgets
* UI updates by rebuilding widget trees
* Parent-child relationship is core to Flutter
* Understanding this concept makes Flutter EASY

---

## Suggested Practice (Conceptual)

1. Draw widget trees on paper
2. Convert UI screenshots into widget trees
3. Identify parent and child widgets in code
4. Predict which widget rebuilds on state change

---

## Final Thought

> If you understand Widget Tree and build() method,
> Flutter stops feeling magical and starts feeling logical.
