import 'package:flutter/material.dart';
import 'package:playstore_application/models/book_model.dart';

// ignore: must_be_immutable
class BookWidgets extends StatelessWidget {
  BookWidgets({super.key});
  List<BookModel> bookList = [
    BookModel(
      bookimg:
          "https://bookstacked.com/wp-content/uploads/2019/11/thequeenofnothinghollyblack.jpg",
      bname1: "The Queen of Nothig",
      bname2: "Book 3",
      bname3: "₹373.04",
      bname4: "₹310.78",
    ),
    BookModel(
        bookimg:
            "https://tse4.mm.bing.net/th?id=OIP.Ssja-Tz1eksuteomdXiZzgHaLH&pid=Api&P=0&h=220",
        bname1: "The Wicked King",
        bname2: "Book 2",
        bname3: "₹393.54",
        bname4: "₹320.55"),
    BookModel(
      bookimg:
          "https://tse3.mm.bing.net/th?id=OIP.htBLHxoRtybTpC6eVetUlAHaLb&pid=Api&P=0&h=220",
      bname1: "The Diamond Cutter",
      bname2: "Book 3",
      bname3: "₹479.92",
      bname4: "₹337.42",
    ),
    BookModel(
      bookimg:
          "https://tse2.mm.bing.net/th?id=OIP.Cc2obGHGVT0WR-elGlRfYgAAAA&pid=Api&P=0&h=220",
      bname1: "Sankarea",
      bname2: "Issue #1",
      bname3: "₹539.43",
      bname4: "₹97.15",
    ),
    BookModel(
      bookimg:
          "https://tse3.mm.bing.net/th?id=OIP.rLgZ5B7cfZnWCzcmnh8CrgHaKj&pid=Api&P=0&h=220",
      bname1: "Blame!",
      bname2: "Issue #1",
      bname3: "₹1,961.80",
      bname4: "₹97.15",
    ),
    BookModel(
      bookimg:
          "https://tse1.mm.bing.net/th?id=OIP.vLMMuCM8v31eyFYqoDWyuwHaLg&pid=Api&P=0&h=220",
      bname1: "King of Capital",
      bname2: "The Remarkable",
      bname3: "₹344.54",
      bname4: "₹137.34",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            BookModel item = bookList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(item.bookimg)),
                          border: Border.all(width: .3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      item.bname1,
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    Text(
                      item.bname2,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          item.bname3,
                          style:
                              const TextStyle(fontSize: 10, color: Color.fromARGB(255, 116, 116, 116),decoration: TextDecoration.lineThrough),
                        ),
                       const SizedBox(width: 5),
                        Text(
                          item.bname4,
                          style:
                              const TextStyle(fontSize: 10, color: Color.fromARGB(255, 116, 116, 116)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: bookList.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
