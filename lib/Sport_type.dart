import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class SportType extends StatefulWidget {
  @override
  State<SportType> createState() => _SportTypeState();
}

class _SportTypeState extends State<SportType> {
  List<dynamic> sporttype = [];
  List<dynamic> allsportsMasters = [];
  List<dynamic> allsport = [];

  String? sporttypeId;
  String? allsportId;

  @override
  void initState() {
    super.initState();

    this.sporttype.add({"id": 1, "name": "In-Door"});
    this.sporttype.add({"id": 2, "name": "Out-Door"});

    this.allsportsMasters = [
      {"ID": 1, "Name": "Carrom", "ParentId": 1},
      {"ID": 2, "Name": "Chess", "ParentId": 1},
      {"ID": 3, "Name": "Pool", "ParentId": 1},
      {"ID": 4, "Name": "Table Tennis", "ParentId": 1},
      {"ID": 5, "Name": "Yoga", "ParentId": 1},
      {"ID": 6, "Name": "Maditation", "ParentId": 1},
      {"ID": 7, "Name": "Arm wrestling", "ParentId": 1},
      {"ID": 1, "Name": "Cricket", "ParentId": 2},
      {"ID": 2, "Name": "Football", "ParentId": 2},
      {"ID": 3, "Name": "Athelatics", "ParentId": 2},
      {"ID": 4, "Name": "Swimming", "ParentId": 2},
      {"ID": 5, "Name": "Badminton", "ParentId": 2},
      {"ID": 6, "Name": "Kabaddi", "ParentId": 2},
      {"ID": 7, "Name": "Basketball", "ParentId": 2},
      {"ID": 8, "Name": "volleyball", "ParentId": 2},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GameON"),
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        ),
        body: Column(
          children: [
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Type",
              "Select sport type",
              this.sporttypeId,
              this.sporttype,
              (onChangedval) {
                this.sporttypeId = onChangedval;
                print("Selected Sport type: $onChangedval");

                this.allsport = this
                    .allsportsMasters
                    .where(
                      (stateItem) =>
                          stateItem["ParentId"].toString() ==
                          onChangedval.toString(),
                    )
                    .toList();

                this.allsportId = null;
              },
              (onValidateval) {
                if (onValidateval == null) {
                  return 'Please Select sport type';
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              // optionValue: "id",
              // optionLabel: "name",
            ),
            FormHelper.dropDownWidgetWithLabel(
                context,
                "Sport",
                "Select your Sport",
                this.allsportId,
                this.allsport, (onChangedval) {
              this.allsportId = onChangedval;
              print("Selected Sport: $onChangedval");
            }, (onValidateval) {
              return  null;
            },
            borderColor: Theme.of(context).primaryColor,
            borderFocusColor: Theme.of(context).primaryColor,
            borderRadius: 10,
            optionValue: "ID",
            optionLabel: "Name",
            ),
          ],
        ),
      ),
    );
  }
}
