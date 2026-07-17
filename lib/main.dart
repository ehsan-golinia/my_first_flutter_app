import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          // foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyMedium: const TextStyle(color: Colors.blueGrey, fontSize: 16),
            bodySmall: const TextStyle(color: Colors.green, fontSize: 14),
            headlineSmall: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My CV', style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.chat_bubble),
            onPressed: () {
              // Handle chat button press
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/profile_image.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                        'Ehsan Golinia',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Flutter Developer',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined, size: 18, color: Colors.green),
                          const SizedBox(width: 4),
                          Text(
                            'Istanbul, Türkiye',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      )
                    ],),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: Icon(CupertinoIcons.heart, color: Theme.of(context).colorScheme.primary),
                    onPressed: () {
                      // Handle heart button press
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'I am a passionate Flutter developer with experience in building beautiful and functional mobile applications. I enjoy learning new technologies and improving my skills.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
