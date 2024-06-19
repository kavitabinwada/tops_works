import 'package:flutter/material.dart';

import '../QNo_60_1/QNo60_1.dart';
import '../Question_50/question50.dart';
import '../Question_51/question_51.dart';
import '../Question_52/question_52.dart';
import '../Question_53/question_53.dart';
import '../Question_54/question_54.dart';
import '../Question_55/question_55.dart';
import '../Question_56/question_56.dart';
import '../Question_57/question_57.dart';
import '../Question_58/question_58.dart';
import '../Question_59/question_59.dart';
import '../assignment_49_2/assignment49_2.dart';
import '../q_49_firstpage/49_firstpage.dart';
import 'Model_ListinQ.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Module 3', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  List<Question> questionList = [
    Question(
        queationClass: Ass49_1(),
        QuestionNo: 1,
        QuestionName: 'Create below screen'),
    Question(
        queationClass: Ass49_2(),
        QuestionNo: 2,
        QuestionName: 'Create below screen'),
    Question(
        queationClass: Ass50(),
        QuestionNo: 3,
        QuestionName:
            'Create an application to take input number from user and print it reverse numbers in TextField'),
    Question(
        queationClass: Ass51(),
        QuestionNo: 4,
        QuestionName:
            'Create an application to input 2 numbers from user and all numbers between those two numbers in next activity'),
    Question(
        queationClass: Ass52(),
        QuestionNo: 5,
        QuestionName:
            'Create an application with radio buttons (Add,Subtraction,Multiplication,Division)Edit Text(num1 and num2)and print result as per the user choice from RadioButton in TextView'),
    Question(
        queationClass: Ass53(),
        QuestionNo: 6,
        QuestionName:
            'create an application to change background when button is clicked'),
    Question(
        queationClass: Ass54(),
        QuestionNo: 7,
        QuestionName:
            'create an application to increamate font size when plus button click and'
            'decrease when minus button click'),
    Question(
        queationClass: Ass55(),
        QuestionNo: 8,
        QuestionName:
            'create an application to display Textview when checkbox is checked'
            'and hide otherwise'),
    Question(
        queationClass: Ass56(),
        QuestionNo: 9,
        QuestionName: 'Write a program to show four images around Textview.'),
    Question(
        queationClass: Ass57(),
        QuestionNo: 10,
        QuestionName:
            'Write a program in android display screen color which the Color will'
            'be select from the radio button.'),
    Question(
        queationClass: Ass58(),
        QuestionNo: 11,
        QuestionName:
            'Write a program you have taken three seek bar controls. From three'
            'Seekbar which Seekbar value changed the background color of device'
            'will be changed.'),
    Question(
        queationClass: Ass59(),
        QuestionNo: 12,
        QuestionName: 'Create login and registration form'),
    Question(
        queationClass: Ass60_1(),
        QuestionNo: 13,
        QuestionName: 'Create below screens'),
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
