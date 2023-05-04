import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(


      textDirection: TextDirection.ltr,
      child: MaterialApp(
        title: 'MyApp',
        home: const MoodSelector(),
      ),
    );
  }
}

class MoodSelector extends StatefulWidget {
  const MoodSelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MoodSelectorState createState() => _MoodSelectorState();
}

class _MoodSelectorState extends State<MoodSelector> {
  String _selectedMood = "";

  void _selectMood(String mood) {
    setState(() {
      _selectedMood = mood;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => _selectMood("Happy"),
        child: Text(
  "Happy 😊",
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
),

          
          style: ElevatedButton.styleFrom(
            primary: _selectedMood == "Happy" ? Colors.blue : null,
          ),
        ),
        ElevatedButton(
          onPressed: () => _selectMood("Sad"),
          child:Text("sad 😢 ",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          style: ElevatedButton.styleFrom(
            primary: _selectedMood == "Sad" ? Colors.blue : null,
          ),
        ),
        ElevatedButton(
          onPressed: () => _selectMood("Angry"),
          child: Text("Angry 😠",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          style: ElevatedButton.styleFrom(
            primary: _selectedMood == "Angry" ? Colors.blue : null,
          ),
        ),
        ElevatedButton(
          onPressed: () => _selectMood("Excited"),
          child: Text(" Crazy 🤩",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          style: ElevatedButton.styleFrom(
            primary: _selectedMood == "Excited" ? Colors.blue : null,
          ),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MoodSelector());
// }

// class MoodSelector extends StatefulWidget {
//   const MoodSelector({Key? key}) : super(key: key);

//   @override
//   _MoodSelectorState createState() => _MoodSelectorState();
// }

// class _MoodSelectorState extends State<MoodSelector> {
//   String _selectedMood = "";

//   void _selectMood(String mood) {
//     setState(() {
//       _selectedMood = mood;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             'Mood Tracker',
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => _selectMood("Happy"),
//                 child: const Text("😊"),
//                 style: ElevatedButton.styleFrom(
//                   primary: _selectedMood == "Happy" ? Colors.blue : null,
//                 ),
//               ),
//               Text('Happy'),
//               ElevatedButton(
//                 onPressed: () => _selectMood("Sad"),
//                 child: const Text("😢"),
//                 style: ElevatedButton.styleFrom(
//                   primary: _selectedMood == "Sad" ? Colors.blue : null,
//                 ),
//               ),
//               Text('Sad'),
//               ElevatedButton(
//                 onPressed: () => _selectMood("Angry"),
//                 child: const Text("😠"),
//                 style: ElevatedButton.styleFrom(
//                   primary: _selectedMood == "Angry" ? Colors.blue : null,
//                 ),
//               ),
//               Text('Angry'),
//               ElevatedButton(
//                 onPressed: () => _selectMood("Excited"),
//                 child: const Text("🤩"),
//                 style: ElevatedButton.styleFrom(
//                   primary: _selectedMood == "Excited" ? Colors.blue : null,
//                 ),
//               ),
//               Text('Excited'),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
