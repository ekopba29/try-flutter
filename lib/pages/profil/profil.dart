import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_app/global_components/CardTitleDescEdit.dart';
import 'package:simple_app/pages/profil/banner_profil.dart';
import 'package:simple_app/pages/profil/form_interest.dart';
import 'package:simple_app/pages/profil/form_profil.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('@Jhon Doe'),
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
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            BannerProfil(),
            SizedBox(
              height: 24,
            ),
            CardTitleDescEdit(
              title: 'About',
              desc: 'Add in your your to help others know you better',
              goTo: () {
                return Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const FormProfilPage();
                  }),
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            CardTitleDescEdit(
              title: 'Interest',
              desc: 'Add in your interest to find a better match',
              goTo: () {
                return Navigator.of(context).push(MaterialPageRoute(
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
    );
  }
}
