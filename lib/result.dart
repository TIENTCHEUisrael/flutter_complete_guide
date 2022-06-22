import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore<=8){
      resultText='you are awesome innocent';
    }else if(resultScore<=12){
      resultText='you are pretty likeable';
    }else if(resultScore<=16){
      resultText='you are strange';
    }else{
      resultText='you are a bad boys';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
   return Center(
     child:Column(
       children:<Widget> [
         Text(
           resultPhrase,
               style:  const TextStyle(
                 fontSize: 33,
                 fontWeight: FontWeight.bold
               ),
                textAlign: TextAlign.center,
         ),
         FlatButton(
             onPressed: resetHandler,
             child: const Text('Restart Quizz',style: TextStyle(color: Colors.blue),)
         ),
         RaisedButton(
             onPressed: (){print('pressed Raised Button');},
             child: const Text('Restart Quizz',style: TextStyle(color: Colors.white),)
         ),
         OutlinedButton(
             child:  const Text('Restart Quizzzz'),
             onPressed: (){print('pressed Outline Button');},
             style: OutlinedButton.styleFrom(
               primary: Colors.orange,
               side: const BorderSide(
                  color:Colors.orange
               ),
             ),
         ),
         TextButton(
             onPressed: (){print('Pressed flat button');},
             child: const Text('Restart Quizz'),
             style: TextButton.styleFrom(
               primary:Colors.orange
             )
         ),
         ElevatedButton(
           style: ElevatedButton.styleFrom(
               primary: Colors.orange,
               onPrimary: Colors.white
           ),
           onPressed: (){
             print('pressed Raised Button');
           },
           child: Text('Restart Quizz'),
         )
       ],
     ),
   );
  }
}
