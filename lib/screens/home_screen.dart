import 'package:flutter/material.dart';
import 'package:project/models/question_model.dart';
import '../constants.dart';
import '../widgets/question_widget.dart';
import 'package:project/widgets/next_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_final_fields
  List<Question> _question = [
    Question(id: '10', 
    title: 'what is 2+2 ?', 
    options: {'5':false,'2':false,'4':true},
    ),
    Question(id: '11', 
    title: 'what color is the sky ?', 
    options: {'blue':false,'red':true},
    )
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
            question: _question[index].title, 
            indexAction: index, 
            totalQuestions: _question.length
           ),
            Divider(color: neutral),
        ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}