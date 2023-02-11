// Details adding page

import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tourist_app/application/trip/bloc/trip_bloc.dart';
import 'package:tourist_app/core/di/di.dart';
import 'package:tourist_app/domain/trip_create/trip_create.dart';

import '../users/user.dart';

TripCreateModel tripCreateModel = getIt.get<TripCreateModel>();

class TripAdding extends StatelessWidget {
  const TripAdding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<TripBloc, TripState>(
      listener: (context, state) {
        if (state.isAdded != null) {
          if (state.isAdded!) {
            Navigator.pop(context);
          }
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: TripAddBody(size: size),
          persistentFooterButtons: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .07,
                child: BlocBuilder<TripBloc, TripState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const ElevatedButton(
                          onPressed: null,
                          child: Center(
                              child: CircularProgressIndicator(
                                  strokeWidth: 2.0, color: Colors.white)));
                    }
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UsersList(selectable: true)));
                          // context.read<TripBloc>().add(
                          //     TripEvent.createTrip(model: tripCreateModel));
                        },
                        child: const Center(child: Text('Add Trip')));
                  },
                ))
          ],
        ),
      ),
    );
  }
}

class TripAddBody extends StatelessWidget {
  const TripAddBody({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              // ignore: prefer_const_constructors
              // ignore: sort_child_properties_last
              child: const Center(
                  child: Text("Add Trip",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25))),
              height: size.height * .10,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)))),
          SizedBox(height: size.height * .04),
          Center(
              child: GestureDetector(
            onTap: () {
              ImagePicker().pickImage(source: ImageSource.gallery);
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 4)),
                child: const Center(child: Text("Tap to choose image"))),
          )),
          SizedBox(height: size.height * .04),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: TextField(
                onChanged: (value) {
                  tripCreateModel = tripCreateModel.copyWith(name: value);
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Trip Name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  //  fillColor: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * .02),
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
                                maximumDate: DateTime(2030),
                                onApplyClick: (start, end) {
                              tripCreateModel = tripCreateModel.copyWith(
                                  fromDate: start.toString(),
                                  toDate: end.toString());
                            }, onCancelClick: () {
                              Fluttertoast.showToast(
                                  msg: 'Please select a Valid Date');
                            });
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
                              child: const Center(
                                  child: Text("select a date")))))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      width: size.width * .35,
                      height: size.height * .05,
                      child: TextField(
                          onChanged: (value) {
                            tripCreateModel =
                                tripCreateModel.copyWith(expense: value);
                          },
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              // labelText: "Expense",
                              labelStyle: TextStyle(color: Colors.white),
                              prefix:
                                  Padding(padding: EdgeInsets.only(top: 16.0)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: InputBorder.none))))
            ],
          ),
        ],
      ),
    );
  }
}
