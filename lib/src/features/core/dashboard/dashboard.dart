import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = TextStyle(fontWeight: FontWeight.w600, fontSize: 25);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(tAppName, style: txtTheme),
        centerTitle: true,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(tUserProfileImage)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashBoardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tDashBoardTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              tDashBoardHeading,
              style: txtTheme,
            ),
            const SizedBox(
              height: tDashBoardPadding,
            ),
            //search Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(width: 4)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(tDashBoardSearch,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.apply(color: Colors.grey.withOpacity(0.5))),
                  const Icon(
                    Icons.mic,
                    size: 28,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: tDashBoardPadding,
            ),

            //Categories
            SizedBox(
              height: 45,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
               children : [
                 SizedBox(
                  width: 170,
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tDarkColor),
                        child: Center(
                          child: Text("JS",style:txtTheme?.apply(color: Colors.white) ,),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("JAVA SCRIPT",style:Theme.of(context).textTheme.subtitle1,overflow: TextOverflow.ellipsis,),
                            Text("10 Lessons",style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                 SizedBox(
                   width: 170,
                   height: 45,
                   child: Row(
                     children: [
                       Container(
                         width: 45,
                         height: 45,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: tDarkColor),
                         child: Center(
                           child: Text("JS",style:txtTheme?.apply(color: Colors.white) ,),
                         ),
                       ),
                       SizedBox(width: 10,),
                       Flexible(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("JAVA SCRIPT",style:Theme.of(context).textTheme.subtitle1,overflow: TextOverflow.ellipsis,),
                             Text("10 Lessons",style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,)
                           ],
                         ),
                       )

                     ],
                   ),
                 ),
                 SizedBox(
                   width: 170,
                   height: 45,
                   child: Row(
                     children: [
                       Container(
                         width: 45,
                         height: 45,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: tDarkColor),
                         child: Center(
                           child: Text("JS",style:txtTheme?.apply(color: Colors.white) ,),
                         ),
                       ),
                       SizedBox(width: 10,),
                       Flexible(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("JAVA SCRIPT",style:Theme.of(context).textTheme.subtitle1,overflow: TextOverflow.ellipsis,),
                             Text("10 Lessons",style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,)
                           ],
                         ),
                       )

                     ],
                   ),
                 ),
                 SizedBox(
                   width: 170,
                   height: 45,
                   child: Row(
                     children: [
                       Container(
                         width: 45,
                         height: 45,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: tDarkColor),
                         child: Center(
                           child: Text("JS",style:txtTheme?.apply(color: Colors.white) ,),
                         ),
                       ),
                       SizedBox(width: 10,),
                       Flexible(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("JAVA SCRIPT",style:Theme.of(context).textTheme.subtitle1,overflow: TextOverflow.ellipsis,),
                             Text("10 Lessons",style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,)
                           ],
                         ),
                       )

                     ],
                   ),
                 ),
              ],
              ),
            ),
            const SizedBox(
              height: tDashBoardPadding,
            ),
            //Banners

            //
          ],
        ),
      )),
    );
  }
}
