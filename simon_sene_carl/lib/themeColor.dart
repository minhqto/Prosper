import 'package:flutter/cupertino.dart';

Color getTheme() {
  const Color theme = Color.fromRGBO(245, 246, 240, 1.0);
  return theme;
}
Color getDarkest() {
  const Color darkest = Color.fromRGBO(61, 61, 61, 1.0);
  return darkest;
}

Color getGrey() {
  const Color grey = Color.fromRGBO(120, 120, 120, 1.0);
  return grey;
}

Color getLightGrey() {
  const Color lightGrey = Color.fromRGBO(182, 182, 182, 1.0);
  return lightGrey;
}

Center getTitle()
{
  return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Prosper",
              style: TextStyle(
                fontFamily: "MonarchDisplay",
                fontSize: 24,
              )),
        ),
        alignment: Alignment(-1.0, -0.7),
      ));
}

EdgeInsets getSubHeaderPadding()
{
  return const EdgeInsets.only(left: 20, top: 30, bottom: 10);
}

EdgeInsets getHeaderPadding()
{
  return const EdgeInsets.only(left: 20, top: 10, bottom: 10);
}