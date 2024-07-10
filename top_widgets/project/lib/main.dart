import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Top Widgets'),
            backgroundColor: Colors.amber,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: ListView.builder(
                  itemCount: 200,
                  itemBuilder: (context, index) => const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text("Stella"),
                    subtitle: Text("How can i help sir?"),
                    trailing: Text("3:30PM"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
//  body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.pink,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.yellow,
//                   ),
//                 )
//               ],
//             ),
//             Center(
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 margin:
//                     const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
//                 decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(10),
//                     // border: Border.all(
//                     //   width: 5,
//                     //   color: Colors.pink,
//                     // ),
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Colors.yellow,
//                         blurRadius: 40,
//                       )
//                     ],
//                     image: const DecorationImage(
//                         fit: BoxFit.fill,
//                         image: NetworkImage(
//                             'https://images.pexels.com/photos/1368382/pexels-photo-1368382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
//                 child: const Center(
//                   child: Text(
//                     "Log in",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             const Center(
//               child: Text(
//                 "Log in",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),

//  stack widget

// Stack(
//                 children: [
//                   Container(
//                     width: 140,
//                     height: 100,
//                     color: Colors.pink,
//                   ),
//                   Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.yellow,
//                   ),
//                   Container(
//                     width: 80,
//                     height: 100,
//                     color: Colors.red,
//                   ),
//                 ],
//               )
//             ],

// =============circular /sizedbox /divider/=============

// SizedBox(
//                 height: 100,
//               ),
//               Divider(
//                 thickness: 2,
//               ),
//               SizedBox(
//                 height: 100,
//                 child: VerticalDivider(
//                   color: Colors.black,
//                   thickness: 2,
//                 ),
//               ),
//               CircleAvatar(
//                 maxRadius: 60,
//                 minRadius: 40,
//                 backgroundColor: Colors.teal,
//                 // child: Icon(
//                 //   Icons.person,
//                 //   size: 50,
//                 // ),
//                 backgroundImage: NetworkImage(
//                     'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
//               )
