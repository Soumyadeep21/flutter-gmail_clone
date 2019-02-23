import 'package:flutter/material.dart';
//import 'package:gmail_clone/Main_Email_Body.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gmail_clone/page_navigation.dart';

void main()=> runApp(GmailClone());

class GmailClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String _name = "Soumyadeep Sinha";
  String _email = "soumo.sinha21@gmail.com";
  pages check;
  final LinearGradient backgroundGradient = new LinearGradient(
      colors: [Colors.blue,Colors.red],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft);
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check = pages.primary;
  }

  bool isSelected(pages flag){
    if(flag == check)
      return true;
    return false;
  }

  void changeSelected(pages flag){
    if(flag!=check)
      setState(() {
        check = flag;
      });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(MdiIcons.gmail,color: Colors.red,),
            Text("   F l u t t e r  M a i l")
          ],
        ),
        centerTitle: true ,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: ()=>print("Search")
          )
        ],
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text(_name),
                accountEmail: Text(_email),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/fcb.png"),
                ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(child: Text("R"),backgroundColor: Colors.yellowAccent,)
              ],
              decoration: BoxDecoration(
                gradient: backgroundGradient
              ),
            ),
            ListTile(
              leading: Icon(MdiIcons.inboxMultiple),
              title: Text("All inboxes"),
              onTap: ()=>changeSelected(pages.allInboxes),
              selected: check==pages.allInboxes,
            ) ,
            Divider(),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Primary"),
              onTap: ()=>changeSelected(pages.primary),
              selected: check==pages.primary,
            ),
            ListTile(
              leading: Icon(Icons.group,),
              title: Text("Social"),
              onTap: ()=>changeSelected(pages.social),
              selected: check==pages.social,
            ),
            ListTile(
              /*leading: RotationTransition(
                turns: AlwaysStoppedAnimation(310/ 360),
                child: Image.asset("assets/tag.png",),
              ),*/
              leading: Icon(MdiIcons.voice),
              title: Text("Promotions"),
              onTap: ()=>changeSelected(pages.promotions),
              selected: check==pages.promotions,
            ),
            Divider(),
            Text("      All labels"),
            ListTile(
              leading: Icon(Icons.star,),
              title: Text("Starred"),
              onTap: ()=>changeSelected(pages.starred),
              selected: check==pages.starred,
            ) ,
            ListTile(
              leading: Icon(Icons.access_time,),
              title: Text("Snoozed"),
              onTap: ()=>changeSelected(pages.snoozed),
              selected: check==pages.snoozed,
            ) ,
            ListTile(
              leading: Icon(Icons.label_important,),
              title: Text("Important"),
              onTap: ()=>changeSelected(pages.important),
              selected: check==pages.important,
            ) ,
            ListTile(
              leading: Icon(Icons.send,),
              title: Text("Sent"),
              onTap: ()=>changeSelected(pages.sent),
              selected: check==pages.sent,
            ) ,
            ListTile(
              leading: Icon(Icons.insert_drive_file,),
              title: Text("Drafts"),
              onTap: ()=>changeSelected(pages.drafts),
              selected: check==pages.drafts,
            ) ,
            ListTile(
              leading: Icon(MdiIcons.alertOctagon),
              title: Text("Spam"),
              onTap: ()=>changeSelected(pages.spam),
              selected: check==pages.spam,
            ) ,
            ListTile(
              leading: Icon(Icons.delete,),
              title: Text("Bin"),
              onTap: ()=>changeSelected(pages.bin),
              selected: check==pages.bin,
            ) ,
            Divider(),
            Text("    Google apps"),
            ListTile(
              leading: Icon(Icons.calendar_today,),
              title: Text("Calender"),
              onTap: ()=>print("Calender"),
            ) ,
            ListTile(
              leading: Icon(Icons.account_circle,),
              title: Text("Contacts"),
              onTap: ()=>print("contact"),
            ) ,
            Divider(),
            ListTile(
              leading: Icon(Icons.settings,),
              title: Text("Settings"),
              onTap: ()=>print("seetings"),
            ) ,
            ListTile(
              leading: Icon(Icons.help,),
              title: Text("Help & feedback"),
              onTap: ()=>print("Help"),
            ) ,
          ],
        ),
      ),
      body: pageGenerator(check),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.edit),
          backgroundColor: Colors.red,
      ),
    );
  }
}

