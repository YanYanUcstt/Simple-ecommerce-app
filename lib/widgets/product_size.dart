import 'package:flutter/material.dart';
class ProductSize extends StatefulWidget {
  final List productSizes;
  final Function(String) onSelected;
  ProductSize({required this.productSizes,required this.onSelected});

  @override
  _ProductSizeState createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child:
      Row(
        children: [
          for(var i = 0; i < widget.productSizes.length; i++)
            GestureDetector(
              onTap: (){
                widget.onSelected("${widget.productSizes[i]}");
                setState(() {
                  _selected = i;
                });
              },
              child: Container(
                width: 42.0,
                height: 42.0,
                decoration: BoxDecoration(
                  color: _selected == i ? Theme.of(context).backgroundColor : Color(0xFFDCDCDC),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: 4.0,
                ),
                child: Text(
                  "${widget.productSizes[i]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: _selected == i ? Colors.white : Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
        ]
      ),
    );
  }
}
//
// class ProductSiz extends StatefulWidget {
//   final List productSizeList;
//   final Function(String) onSelected;
//   ProductSiz({required this.productSizeList,required this.onSelected});
//
//   @override
//   _ProductSizState createState() => _ProductSizState();
// }
//
// class _ProductSizState extends State<ProductSiz> {
//   int _selected = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         for(int i=0 ; i<widget.productSizeList.length ; i++)
//           GestureDetector(
//             onTap: (){
//               widget.onSelected("${widget.productSizeList[i]}");
//               setState(() {
//                 _selected = i;
//               });
//             },
//             child: Container(
//               width: 42.0,
//               height: 42.0,
//               decoration: BoxDecoration(
//                 color: _selected == i ? Colors.blueAccent :Colors.white,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               alignment: Alignment.center,
//               margin: EdgeInsets.symmetric(
//                 horizontal: 4.0,
//               ),
//               child: Text(
//                 "${widget.productSizeList[i]}",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: _selected == i ? Colors.white : Colors.black,
//                   fontSize: 16.0,
//                 ),
//               ),
//             ),
//           )
//       ],
//     );
//   }
// }

