import 'package:flutter/material.dart';
import 'package:quiz_ui/quizConstants.dart';
import 'SizeConfig.dart';

class QuizButtons extends StatelessWidget {
  final String text;
  final Function onPressed;
  QuizButtons({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.444,
          height: SizeConfig.screenHeight * 0.046875,
          child: RaisedButton(
            elevation: 5,
            onPressed: onPressed,
            color: colorOrangePrimary,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.screenWidth * 0.0389),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}

class Bullets extends StatelessWidget {
  final String text;
  Bullets({@required this.text});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.3056,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.01,
      ),
      child: Row(
        children: [
          Icon(
            Icons.fiber_manual_record,
            color: colorBlueText,
            size: SizeConfig.screenWidth * 0.04167,
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.0278),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.0389,
                fontWeight: FontWeight.w400,
                color: colorBlueText,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReviewContainer extends StatelessWidget {
  final String question;
  final String questionNumber;

  ReviewContainer({
    @required this.question,
    @required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(
          left: SizeConfig.screenWidth * 0.04167,
          right: SizeConfig.screenWidth * 0.04167,
          bottom: SizeConfig.screenHeight * 0.01875),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 0.033,
          vertical: SizeConfig.screenHeight * 0.01875),
      child: Column(
        children: [
          Text(
            '1. Description of the quiz the quiz Description of the quiz the quiz Description of the quiz the quiz',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
          ReviewOptions(
              text: 'Answer 1',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenWidth * 0.056,
              )),
          ReviewOptions(
            text: 'Answer 2',
            icon: Icon(
              Icons.cancel,
              color: Colors.red,
              size: SizeConfig.screenWidth * 0.056,
            ),
          ),
          ReviewOptions(
            text: 'Answer 3',
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: SizeConfig.screenWidth * 0.056,
            ),
          ),
          ReviewOptions(
              text: 'Answer 4',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenWidth * 0.056,
              )),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Text(
            'Description Description Description Description Description Description Description Description',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewOptions extends StatelessWidget {
  final String text;
  final Icon icon;

  ReviewOptions({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: SizeConfig.screenWidth * 0.033),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.0389,
                fontWeight: FontWeight.w400,
                color: Color(0xff305275),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  final double margin;
  final String text;
  final Color buttonColor;
  final Color textColor;
  AnswerButton({
    @required this.text,
    @required this.buttonColor,
    @required this.textColor,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: SizeConfig.screenHeight * 0.0625,
            margin: EdgeInsets.only(
                left: margin,
                right: margin,
                top: SizeConfig.screenWidth * 0.012,
                bottom: SizeConfig.screenWidth * 0.012),
            child: RaisedButton(
              onPressed: () {
//TODO : Responsiveness
              },
              color: buttonColor,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(color: Color(0xff305275), width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
