import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Free extends StatefulWidget {
  const Free({Key? key}) : super(key: key);

  @override
  State<Free> createState() => _FreeState();
}

class _FreeState extends State<Free> {
  var data;
  var userData;
  void getData() async{
    final response = await http.get(Uri.parse("http://luckyapi.qizo.in/api/mcompanyprofiles"));
    print(response.body);
    data=json.decode(response.body);
    setState(() {
      userData=data["data"];
    });
    debugPrint(userData.toString());
  }
  @override
  void initState() {
    super.initState();
    getData();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder:( context,index){
        return Card(

          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ID:"),
                      Text("${userData["id"]}"),

                    ],
                  ),
                ),
                Column(
                  children:[
                    Text(userData[index]["companyProfileId"].toString()),
                    Text(userData[index]["companyProfileName"].toString()),
                    Text(userData[index]["companyProfileShortName"].toString()),
                    Text(userData[index]["companyProfileMailingName"].toString()),
                    Text(userData[index]["companyProfileAddress1"].toString()),
                    Text(userData[index]["companyProfileAddress2"].toString()),
                    Text(userData[index]["companyProfileAddress3"].toString()),
                    Text(userData[index]["companyProfileGstNo"].toString()),
                    Text(userData[index]["companyProfileMobile"].toString()),
                    Text(userData[index]["companyProfileContact"].toString()),
                    Text(userData[index]["companyProfileEmail"].toString()),
                    Text(userData[index]["companyProfileWeb"].toString()),
                    Text(userData[index]["companyProfileBankName"].toString()),
                    Text(userData[index]["companyProfileAccountNo"].toString()),
                    Text(userData[index]["companyProfileBranch"].toString()),
                    Text(userData[index]["companyProfileIfsc"].toString()),
                    Text(userData[index]["companyProfileIsPrintHead"].toString()),
                    Text(userData[index]["companyProfileStateId"].toString()),
                    Text(userData[index]["companyProfileLedgerId"].toString()),
                    Text(userData[index]["companyProfilePin"].toString()),
                    Text(userData[index]["companyProfileNameLatin"].toString()),
                    Text(userData[index]["buildingNo"].toString()),
                    Text(userData[index]["buildingNoLatin"].toString()),
                    Text(userData[index]["streetName"].toString()),
                    Text(userData[index]["streetNameLatin"].toString()),
                    Text(userData[index]["district"].toString()),
                    Text(userData[index]["districtLatin"].toString()),
                    Text(userData[index]["city"].toString()),
                    Text(userData[index]["cityLatin"].toString()),
                    Text(userData[index]["country"].toString()),
                    Text(userData[index]["countryLatin"].toString()),
                    Text(userData[index]["pinNo"].toString()),
                    Text(userData[index]["pinNoLatin"].toString()),
                    Text(userData[index]["regKey"].toString()),
                    Text(userData[index]["companyProfileLedger"].toString()),
                    Text(userData[index]["companyProfileState"].toString()),
                    Image.network(userData[index]["companyProfileImagePath"]),

                  ],
                ),
              ]
          ),
        );
      }
      ),

    );
  }
}
