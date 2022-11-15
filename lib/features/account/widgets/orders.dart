import 'package:flutter/material.dart';
import 'package:shopyy/constants/global_variables.dart';
import 'package:shopyy/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  //temporary list
  List list = [{
   'https://images.unsplash.com/photo-1664575603992-0f17b771dd91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
   'https://images.unsplash.com/photo-1664575603992-0f17b771dd91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
   'https://images.unsplash.com/photo-1664575603992-0f17b771dd91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575603992-0f17b771dd91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'
  }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: const Text(
            'Your Orders',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          child: Text(
            'See All',
            style: TextStyle(
              color: GlobalVariables.selectedNavBarColor,
            ),
          ),
        ),
        //display order

      ],
    ),
    Container(
    height: 170,
    padding: const EdgeInsets.only(left: 10, top: 20, right: 0,),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: ((context, index) {
    return SingleProduct(image: list[index],);
    }
    ),),),
    ],);
    }
}
