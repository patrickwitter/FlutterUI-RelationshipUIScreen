import 'package:flutter/material.dart';
import 'package:relationshipuiapp/widgets/profileWidget.dart';
import 'package:relationshipuiapp/widgets/titleHeader.dart';

void main() {
  runApp(RelationshipApp());
}

class RelationshipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relationship App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.grey,
        ),
        title: FlutterLogo(
          size: 25,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
              color: Colors.white,
              child: Text(
                "Get coaching",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            TitleHeader(),
          ],
        ),
        SizedBox(height: 30),
        BodyHeader(),
        Body()
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 5,
        childAspectRatio: 2 / 3,
        children: [
          ProfileWidget(
            color: Colors.red,
            text: "Can't wait",
          ),
          ProfileWidget(
            color: Colors.green,
            text: "You're gorgeous",
          ),
          ProfileWidget(
            color: Colors.green,
          ),
          ProfileWidget(
            color: Colors.red,
          ),
          ProfileWidget(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class BodyHeader extends StatelessWidget {
  const BodyHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "MY COACHES",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            "VIEW PAST SESSIONS",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
