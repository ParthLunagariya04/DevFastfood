// import 'package:dev_fastfood/models/startup_view_model.dart';
// import 'package:flutter/material.dart';

// class StartUpView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelProvider<StartUpViewModel>.withConsumer(
//       viewModel: StartUpViewModel(),
//       builder: (context, model, child) => Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               SizedBox(
//                 width: 300,
//                 height: 100,
//                 child: Image.asset('assets/images/icon_large.png'),
//               ),
//               CircularProgressIndicator(
//                 strokeWidth: 3,
//                 valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }