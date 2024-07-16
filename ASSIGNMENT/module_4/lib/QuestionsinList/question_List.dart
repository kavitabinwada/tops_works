import 'package:flutter/material.dart';
import 'package:module_4/Ass_62/ass_62.dart';
import 'package:module_4/Ass_63/ass_63.dart';
import 'package:module_4/Ass_64/ass_64.dart';
import 'package:module_4/Ass_65/ass_65.dart';
import 'package:module_4/Ass_66/ass_66.dart';
import 'package:module_4/Ass_69/ass_69.dart';
import 'package:module_4/Ass_70/ass_70.dart';
import 'package:module_4/Ass_72/ass_72.dart';
import 'package:module_4/Ass_73/ass_73.dart';
import 'package:module_4/Ass_74/ass_74Screen1.dart';
import 'package:module_4/Ass_75/ass_75.dart';
import 'package:module_4/Ass_76/ass_76.dart';
import 'package:module_4/Ass_77/ass_77.dart';
import 'package:module_4/Ass_78/Screen78.dart';
import 'package:module_4/Question_61/Q_firstpage1.dart';
import 'package:module_4/Question_67/q_67.dart';
import 'package:module_4/Question_68/q_68.dart';
import 'package:module_4/Question_71/q_71.dart';
import 'Model_ListinQ.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Module 3',
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  List<Question> questionList = [
    Question(
        queationClass: Ass61(),
        QuestionNo: 1,
        QuestionName: '61.Create below screen'),
    Question(
        queationClass: Ass_62(),
        QuestionNo: 2,
        QuestionName:
            ' 62.Write a code to display simple alert dialog with title, description and'
            'icon when button is clicked'),
    Question(
        queationClass: Ass63(),
        QuestionNo: 3,
        QuestionName:
            '63. Write a code to display alert dialog with positive, negative and'
            'neutral button and display toast respectively users choice'),
    Question(
        queationClass: Ass64(),
        QuestionNo: 4,
        QuestionName:
            '64.Write a code to display alert dialog with list of cities and Single'
            'choice selection display selected city in TextView'),
    Question(
        queationClass: Ass65(),
        QuestionNo: 5,
        QuestionName:
            '65.open alert dialog when user want to exit from the application'),
    Question(
        queationClass: Ass66(),
        QuestionNo: 6,
        QuestionName: '66.Write a code to select Date on button s click event'),
    Question(
        queationClass: Ass67(),
        QuestionNo: 7,
        QuestionName:
            '67.Write a code to display profile and logout option in options menu'),
    Question(
        queationClass: Ass68(),
        QuestionNo: 8,
        QuestionName:
            '68.Write a code to display edit, view, delete options with context menu'),
    Question(
        queationClass: Ass_69(),
        QuestionNo: 9,
        QuestionName:
            '69.Create an application like gmail and display Screens according to'
            'user selection and design each page with dummy data'),
    Question(
        queationClass: Ass70(),
        QuestionNo: 10,
        QuestionName:
            '70.Create an application with bottom navigation with 3 tabs Gallery'
            'audio and video and design each page with dummy data'),
    Question(
        queationClass: Ass_71(),
        QuestionNo: 11,
        QuestionName:
            '71.Create an application with Navigation Drawer with 3 tabs Gallery,'
            'audio and video and design each page with dummy data'),
    Question(
        queationClass: Ass72(),
        QuestionNo: 12,
        QuestionName:
            '72.create a Phone call App when user first time open the app it will'
            'automatically generate one dialog which has two option allow, deny if'
            'click on allow permission is grant in settings'),
    Question(
        queationClass: Ass_73(),
        QuestionNo: 13,
        QuestionName:
            '73. Write a code to display Splash Screen using Activity'),
    Question(
        queationClass: Ass74Screen(),
        QuestionNo: 14,
        QuestionName:
            '  74.Write a code to redirect user from one activity to another when'
            'button click.'),
    Question(
        queationClass: Ass75(),
        QuestionNo: 15,
        QuestionName:
            ' 75.Create an Android Application which Manage Activity Lifecycle'
            'Stages and Showing Toast with Performing Different Stages.'),
    Question(
        queationClass: Ass_76(),
        QuestionNo: 16,
        QuestionName:
            ' 76.Create an Application to take input two numbers from users and'
            'when user press button then display sum of those values of next'
            'Activity.'),
    Question(
        queationClass: Ass_77(),
        QuestionNo: 17,
        QuestionName: '77.Call via urllauncher, Send Sms via urllauncher'),
    Question(
        queationClass: Ass78(),
        QuestionNo: 18,
        QuestionName:
            '78. Write a program to add name from the text view and insert into the'
            ' listview. If you click on the listview then name should be show in the'
            'dialog box. When user press for 2 seconds on particular List item then'
            'open Context Menu (Delete Item, Edit Item, Exit). If user click on'
            'Delete Item then Open one Alert Dialog with message (“Are you sure'
            'want to delete Item?”) and yes, no button if user press yes button then'
            'remove item from list. (Click a DELETE button, it gives a confirm box)'
            'If user click on Edit item then selected item display on EditText and'
            'again user click on button then this (updated item) should be replace'
            'with old item'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question List'),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, index) => Card(
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                questionList[index].queationClass,
                          )),
                      title: Text(questionList[index].QuestionName),
                    ),
                  ))),
    );
  }
}
