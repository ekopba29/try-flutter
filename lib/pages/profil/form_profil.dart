import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_app/global_components/CardTitleDescEdit.dart';
import 'package:simple_app/pages/profil/banner_profil.dart';
import 'package:simple_app/pages/profil/form_interest.dart';

const List<String> list = <String>['Male', 'Female'];

class FormProfilPage extends StatelessWidget {
  const FormProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(''),
        leadingWidth: 120,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              BannerProfil(),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                child: Card(
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 27, top: 13, right: 27),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "About",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Save & Edit",
                                style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        InputLabeling(
                            labelName: 'Display Name', paddingRightForm: 22),
                        SizedBox(
                          height: 14,
                        ),
                        InputLabeling(
                            labelName: 'Height', paddingRightForm: 65),
                        SizedBox(
                          height: 14,
                        ),
                        InputLabeling(
                            labelName: 'Weight', paddingRightForm: 65),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      64, 0, 0, 0),
                                  child: DropdownButtonGender()),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CardTitleDescEdit(
                title: 'Interest',
                desc: 'Add in your interest to find a better match',
                goTo: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const FormInterest();
                    },
                  ));
                },
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputLabeling extends StatelessWidget {
  InputLabeling({super.key, this.labelName = '', this.paddingRightForm = 22});

  String labelName;
  double paddingRightForm;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelName,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(paddingRightForm, 0, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownButtonGender extends StatefulWidget {
  const DropdownButtonGender({super.key});

  @override
  State<DropdownButtonGender> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonGender> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      alignment: Alignment.bottomRight,
      isExpanded: true,
      elevation: 16,
      // style: const TextStyle(color: Colors.deepPurple),
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            textAlign: TextAlign.right,
          ),
        );
      }).toList(),
    );
  }
}
