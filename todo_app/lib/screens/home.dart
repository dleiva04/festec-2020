import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:todo_app/models/task.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  final List<Task> tasks;
  Home(this.tasks);
}

class _HomeState extends State<Home> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: widget.tasks.length == null
            ? null
            : widget.tasks
                .map(
                  (e) => _card(e),
                )
                .toList(),
      ),
    );
  }

  Widget _card(Task t) {
    return Dismissible(
      key: Key(t.key),
      onDismissed: (dismissed) {
        widget.tasks.removeWhere((element) => element.key == t.key);
        print('length');
        print(widget.tasks.length);
      },
      background: Container(
        alignment: Alignment.centerRight,
        height: 80,
        child: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Icon(
            Ionicons.trash_bin_outline,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              offset: Offset(0.0, 0.75),
            )
          ],
          color: Color(0xffFFC2C2),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 80,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              offset: Offset(0.0, 0.75),
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            Checkbox(
              value: t.state,
              onChanged: (check) {
                setState(() {
                  t.state = check;
                  // widget.tasks.removeWhere((element) => element.key == t.key);
                });
              },
            ),
            SizedBox(width: 50),
            Text(
              t.title,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: t.state
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
