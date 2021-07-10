import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(  // Add a ListView to the drawer. This ensures the user can scroll
        children: <Widget>[
          DrawerHeader(child: Container(
          
          width: double.infinity,
          padding: EdgeInsets.all(60),
          color: Theme.of(context).primaryColor,

          ),),
           ListTile(
              title: Text('Set Status Message'),
              leading: Icon(Icons.mode_outlined),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings_outlined),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('What New'),
              leading: Icon(Icons.lightbulb_outline),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Accounts and Orgs'),
             
            ),
            ListTile(
              title: Text('Add Account'),
              leading: Icon(Icons.add),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()),);
              },
            ),
        ],
        ),
        );
      
    
  }
}
