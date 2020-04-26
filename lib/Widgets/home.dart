import 'package:coopwork/Widgets/login.dart';
import 'package:coopwork/Widgets/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(

        length: choices.length,
        child: Scaffold(

          appBar: AppBar(

            backgroundColor: Colors.yellowAccent,
            textTheme: Typography.blackCupertino,
            title: Row( children: <Widget>[
              SizedBox(
                  child: IconButton(
                    padding: EdgeInsets.only(right: 110),
                    icon: Icon(Icons.arrow_back, color: Colors.black, size: 25,),
                    onPressed: () {Navigator.pop(context);}//, MaterialPageRoute(builder: (BuildContext context) => MyApp())
                  )
              ),
              Center(
              child:
              const Text('CoopWork', textScaleFactor: 2,),),]),
            bottom:


            TabBar(

              labelStyle: TextStyle(fontSize: 20),
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              indicatorWeight: 30,
              labelPadding: EdgeInsets.symmetric(horizontal: 40),
              indicator: BoxDecoration(
                  color: Colors.black),
              tabs: choices.map((Choice choice) {
                return Tab(

                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),

          ),
          body: TabBarView(

            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
          floatingActionButton:
          FloatingActionButton(
            backgroundColor: Colors.black,
            child:
              Expanded ( child:
               Icon(Icons.accessibility, color: Colors.white,),

              ),
            onPressed: () {
             },
          ),

        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title:  'ACCOUNTS', icon: Icons.attach_money),
  const Choice(title: 'BILLS', icon: Icons.collections_bookmark),
  const Choice(title: 'BUDGETS', icon: Icons.account_balance_wallet),
  const Choice(title: 'VOTE', icon: Icons.archive),
  const Choice(title: 'DEBATE', icon: Icons.chat),

];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
   //final TextStyle textStyle = Theme.of(context).textTheme.headline1;
    return Card(
      color: Colors.yellowAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: Colors.black),
            //textStyle.color),
            Text(choice.title, style: TextStyle(fontSize: 30, color: Colors.black,)), //style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(TabbedAppBar());
}
