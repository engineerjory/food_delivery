import 'package:flutter/material.dart';

import '../../config/colors/colors.dart';
import 'package:country_pickers/country_pickers.dart';

class RegisterTextField extends StatefulWidget {
  RegisterTextField({Key? key}) : super(key: key);

  @override
  State<RegisterTextField> createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
   var items = ["item1","item2","item3","item4","item5",];
   String? newValue ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child:
     Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: MyColors.primary,
          )
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CountryPickerDropdown(
                initialValue: 'AR',
                itemBuilder: _buildDropdownItem,
              //  itemFilter:  ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                priorityList:[
                  CountryPickerUtils.getCountryByIsoCode('GB'),
                  CountryPickerUtils.getCountryByIsoCode('CN'),
                ],
              //  sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                onValuePicked: ( country) {
                 // print("${country.name}");
                },
              ),
            ),
           SizedBox(
             width: 100,
             child:  TextField(
               cursorColor: Colors.amber,
               keyboardType:TextInputType.number ,
               decoration: InputDecoration(
                 border: InputBorder.none,

               ),
             ),
           )
          ],
        ),


     ),
        );

  }

   Widget _buildDropdownItem( country) => Container(
     child: Row(
       children: <Widget>[
         CountryPickerUtils.getDefaultFlagImage(country),
         SizedBox(
           width: 8.0,
         ),
         Text("+${country.phoneCode}(${country.isoCode})"),
       ],
     ),
   );




   DropdownMenuItem<String> buildMenuItem(String item){
     return DropdownMenuItem(
       child: Text(item,style: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 20,      ),),
     );
   }
}
/*  DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            //<-- SEE HERE
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          filled: true,
          fillColor: Colors.greenAccent,
        ),
        dropdownColor: Colors.greenAccent,
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 20),
            ),
          );
        }).toList(),
      ),*/
//TextField(
//   decoration: InputDecoration(
//     contentPadding: EdgeInsets.all(6),
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 1,
//         color: Color(0xEDEEEEEE),
//       ),
//       borderRadius: BorderRadius.circular(5),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 1,
//         color: MyColors.primary,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     ),
//   ),

/*Row(
          children: [
            DropdownButton<String>(
                onChanged: (value){
             newValue = value;
             setState((){});
                },
              items: items.map(buildMenuItem).toList(),
            ),*/