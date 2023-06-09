import 'package:ebook/utility.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class UserSettingsScreen extends StatefulWidget {
  UserSettingsScreen({Key? key}) : super(key: key);

  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  bool isSwitched = false,
      isLockApp = true,
      isFingerPrintEnabled = false,
      isChangePass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("User Settings"),
        centerTitle: true,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(

            title: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Common',style: TextStyle(color: primary,fontWeight: FontWeight.bold),),
            ),
            tiles: [
              SettingsTile(
                title: Text('Language',),
                description: Text('English'),
                leading: Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Use System Theme'),
                leading: Icon(Icons.phone_android),

                onToggle: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }, initialValue: null,
              ),
            ],
          ),
          SettingsSection(
            title: Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Account',style: TextStyle(color: primary, fontWeight: FontWeight.bold),),
            ),

            tiles: [
              SettingsTile(
                title: Text('Phone number'),
                leading: Icon(Icons.phone),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: Text('Email'),
                leading: Icon(Icons.email),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: Text('Sign out'),
                leading: Icon(Icons.logout),
                onPressed: (BuildContext context) {},
              ),
            ],
          ),
          SettingsSection(
            title: Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Security',style: TextStyle(color: primary, fontWeight: FontWeight.bold),),
            ),

            tiles: [
              SettingsTile.switchTile(
                title: Text('Lock app in background'),
                leading: Icon(Icons.phonelink_lock_sharp),

                onToggle: (value) {
                  setState(() {
                    isLockApp = value;
                  });
                }, initialValue: null,
              ),
              SettingsTile.switchTile(
                  title: Text('Use fingerprint'),
                  leading: Icon(Icons.fingerprint),

                  onToggle: (value) {
                    setState(() {
                      isFingerPrintEnabled = value;
                    });
                  }, initialValue: null,),
              SettingsTile.switchTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.lock_rounded),

                  onToggle: (value) {
                    setState(() {
                      isChangePass = value;
                    });
                  }, initialValue: null,),
            ],
          ),
        ],
      ),
    );
  }
}