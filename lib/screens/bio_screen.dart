import 'package:flutter/material.dart';
import 'package:bio_app/widgets/bio_card.dart';
import 'package:bio_app/widgets/bio_container.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Bio'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        // color: Color(0xFF0078AA),
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF0078AA),
              Color(0XFFF2DF3A),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Course',
              style: TextStyle(
                fontFamily: 'Edu',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'VisionPlus',
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            // SizedBox(height: 50,),
            const Divider(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              height: 50,
            ),
            BioCard(
              leadingIcon: Icons.email,
              title: 'Email:',
              subtitle: 'email@app.com',
              trailingIcon: Icons.send,
              marginBottom: 10,
              onPressed: (){
                print('send email');
              },
            ),
         //    BioCard(
         //      leadingIcon: Icons.phone_android,
         //      title: 'Phone:',
         //      subtitle: '0561234567',
         //      trailingIcon: Icons.call,
         //      onPressed: () {
         //        print('call mobile');
         //      }
         // ),
            BioContainer(
              leadingIcon: Icons.phone_android,
              title: 'Phone:',
              subTitle:'0561234567',
              trailingIcon: Icons.call,
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: const Text('call mobile'),
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 3),
                      dismissDirection: DismissDirection.horizontal,
                      behavior: SnackBarBehavior.floating,
                       onVisible: ()=>print('Visible'),
                       // padding: EdgeInsets.all(10),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       action: SnackBarAction(
                         label: 'UNDO',
                         textColor:Colors.white,
                         onPressed: ()=>print('UNDO'),
                       ),

                    ),
                );
              },
              marginBottom: 10,
            ),
            BioContainer(
              leadingIcon: Icons.location_history,
              title: 'Address:',
              subTitle:'Palistine-Gaza',
              trailingIcon: Icons.map,
              onPressed: (){
                print('show map');
              },
              marginBottom: 10,
            ),
        ],
       ),
      ),
    );
  }
}




