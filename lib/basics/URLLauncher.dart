
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncher extends StatelessWidget {
  const URLLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(
                onPressed: (){
                  const link = "https://www.google.com/";
                  launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.externalApplication
                  );
                },
                child: Text("Link")
            ),

            ElevatedButton(
                onPressed: (){
                  launchUrl(
                    Uri(scheme: "tel", path: "1234567890"),
                    mode: LaunchMode.externalApplication
                  );
                },
                child: Text("Call")
            ),

            ElevatedButton(
                onPressed: (){
                  launchUrl(
                    Uri(scheme: "mailto", path: "info@gmail.com"),
                    mode: LaunchMode.externalApplication,
                  );
                  },

                child: Text("Mail")
            ),

            // Link(
            //     uri: Uri.parse("https://www.google.com/"),
            //     // target: LinkTarget.blank,
            //     builder: (context, followLink) {
            //       return ElevatedButton(
            //           onPressed: () async {
            //             const url = "https://www.google.com/";
            //             if (await canLaunchUrl(url as Uri)) {
            //               await launch(url);
            //             } else {
            //               throw 'Could not launch $url';
            //             }
            //           },
            //           child: Text("Open"));
            //     },),
          ],
        ),
      ),
    );
  }
}
