import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes_appbar.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 24,right: 24,),
      child: Column(
        children: [
          BookDetailesAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .20),
            child: HomeListViewItem(),
          ),
          Text(
            "The Jungel Book",
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 3,),
          Text(
            "Rudyard Kipling",
            style: TextStyle(fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
              ),
              Text(
                " 4.8",
                style: Styles.textStyle20,
              ),
              Text(
                " (2390)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Center(child: Text("199.99 \$")),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                        color: Color.fromARGB(255, 235, 144, 102),
                      ),
                      child: Center(child: Text("Free Preview")),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("You Can Also Like",style: Styles.textStyle20,textAlign: TextAlign.left,),
            ],
          ),
          Expanded(child: HomeListView()),
        ],
      ),
    ));
  }
}
