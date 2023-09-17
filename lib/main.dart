import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_flutter_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_flutter_app/src/utils/theme/theme.dart';


void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
      home: SplashScreen(),
    );
  }
}


/*
class AppHome extends StatelessWidget
{
  const AppHome({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );

  }

 */


/*class AppHome extends StatelessWidget
{
  const AppHome({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("./aapable")),
        body: const Center(child: Text("Home Page"),),
      );

  }

}*/





/* class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text("Sub-heading",
                style: Theme.of(context).textTheme.displaySmall),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/books.png")),
            )
          ],
        ),
      ),
    );
  }
} */
