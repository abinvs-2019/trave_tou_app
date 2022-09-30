// Details adding page

import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';

class TripAdding extends StatelessWidget {
  const TripAdding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                    child: Text(
                  "Add Trip",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
                height: size.height * .10,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Title",

                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      //  fillColor: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height*.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 8,
                      child: InkWell(
                        onTap: () {
                          showCustomDateRangePicker(context,
                              dismissible: true,
                              minimumDate: DateTime.now(),
                              maximumDate:
                                  DateTime.now().add(const Duration(days: 30)),
                              onApplyClick: (start, end) {
                            print(" $start   $end");
                          }, onCancelClick: () {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )),
                          width: size.width * .35,
                          height: size.height * .05,
                          child: Center(child: Text("select a date")),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        width: size.width * .35,
                        height: size.height * .05,
                        child: TextField(
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelText: "Expense",
                            labelStyle: TextStyle(color: Colors.white,),
                            prefix: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "₹",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.grey,
                            border: InputBorder.none,
                          ),
                        ),
                      )),
                ],
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}
