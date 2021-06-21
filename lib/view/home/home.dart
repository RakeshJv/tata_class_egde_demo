import 'package:demo/base/base_state.dart';
import 'package:demo/model/question.dart';
import 'package:demo/util/app_colors.dart';
import 'package:demo/util/app_string.dart';
import 'package:demo/view/home/quiz_screen.dart';
import 'package:demo/view/utils/wigets/card_courses.dart';
import 'package:demo/view/utils/wigets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class Home extends BaseStatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _Home();
  }
}

class _Home extends BaseState<Home> {


  final TextEditingController _searchControl = new TextEditingController();
  FocusNode myFocusNode;
  List data =[];
  List <Question> questionList =[];


  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/question1.json');
    print(jsonText);
    var jsonText2 = await rootBundle.loadString('assets/question2.json');

    print(jsonText2);


    data =json.decode(jsonText)   ;
    print(data.length);

     for( int i =0;i<data.length;i++){
       Question question =Question.fromJson(data.elementAt(i));
       questionList.add(question);
     }

    data.clear();

    data =json.decode(jsonText2)   ;
    print(data.length);

    for( int i =0;i<data.length;i++){
      Question question =Question.fromJson(data.elementAt(i));
      questionList.add(question);
    }

    print("questionList----"+questionList.length.toString());
setState(() {

});
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    this.loadJsonData();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: new EdgeInsets.symmetric(
                    horizontal: COLORS.mainPadding,
                    vertical: COLORS.mainPadding
                ),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.menu, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    debugPrint("Menu pressed");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Header(),
          Padding(
            padding: EdgeInsets.all(COLORS.mainPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(height: COLORS.mainPadding * 2),
                // 1. Welcome User
                Text("Welcome Student!",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: COLORS.mainPadding),
                // 2. Search Textfield
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    focusNode: myFocusNode,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: COLORS.textDark,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Search courses",
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: COLORS.textDark,
                        ),
                        onPressed: () {
                          debugPrint("Search pressed");
                        },
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    maxLines: 1,
                    controller: _searchControl,
                  ),
                ),
                SizedBox(height: COLORS.mainPadding),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFEF3F3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text("Start Learning \nNew Stuff!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: COLORS.textDark
                            ),
                          ),

                          SizedBox(height: 10.0),

                          // Categories Button
                          Container(
                            width: 150,
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: COLORS.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child:
                                      Text("Quiz",
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuizScreen()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    // Image Researching Girl
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset("assets/images/researching.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Courses in progress",
                    style: TextStyle(
                      color: COLORS.textDark,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(height: 20.0),

                // List of courses
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: questionList.length,
                  itemBuilder: (context ,index) {
                    return InkWell(
                        onTap: () {
                          _openVideoPlayer();
                        },
                        child: getRowView(questionList.elementAt(index), index)


                    );
                  }
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }


 Widget getRowView(Question question, int index){

    Color color ;
    if(index%2==0){
      color  = COLORS.lightViolet;
   }
    else{
   color = COLORS.lightPink;
   }

    return
      CardCourses(
        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
        color: color,
        title: question.data.stimulus,
        hours: "10 hours, 19 lessons",
        progress: "50%",
        percentage: 0.5,
      );


  }
  void _openVideoPlayer() {
    Navigator.pushNamed(context, AppString.ROUTE_DIRECT_VIDEO_PLAYER_SCREEN);

   /* Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) =>  VideoApp(),
         // builder: (BuildContext context) =>  App(),

 //builder: (BuildContq222222222222222222222222ext context) =>  VideoPlayerScreen(),



      ),
    );*/
  }
}