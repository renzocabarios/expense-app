import 'package:flutter/material.dart';

import '../../../constants/design.dart';
import 'total_balance.dart';

class OverallDetails extends StatelessWidget {
  const OverallDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Design.black500,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TotalBalance(),
        ],
      ),
    );
  }
}
// class OverallDetails extends StatelessWidget {
//   const OverallDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(
//         vertical: 30,
//         horizontal: 15,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Design.black500,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.4),
//             spreadRadius: 1,
//             blurRadius: 1,
//           ),
//         ],
//       ),
//       child: const Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TotalBalance(),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TotalBalance(),
//               TotalBalance(),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }