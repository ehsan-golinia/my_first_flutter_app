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
    Color surfaceColor = Color(0x0dffffff); // 5% opacity white
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
        dividerColor: surfaceColor,
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

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType {
  python,
  pytorch,
  dart,
  opencv,
  flutter,
  firebase,
}

class _MyHomePageState extends State<MyHomePage> {

  _SkillType _selectedSkill = _SkillType.python;

  void updateSelectedSkill(_SkillType type) {
    setState(() {
      this._selectedSkill = type;
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Divider(color: Theme.of(context).dividerColor),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Row(
                children: [
                  Text(
                    'Skills',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(width: 2),
                  Icon(CupertinoIcons.chevron_down, size:12),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Skill(
                        type: _SkillType.python,
                        skillName: 'Python',
                        skillIconPath: 'assets/images/skill_icon_01.png',
                        shadowColor: Colors.green,
                        isActive: _selectedSkill == _SkillType.python,
                        onTap: () {
                          updateSelectedSkill(_SkillType.python);
                        },
                      ),
                      Skill(
                        type: _SkillType.pytorch,
                        skillName: 'Pytorch',
                        skillIconPath: 'assets/images/skill_icon_02.png',
                        shadowColor: Colors.deepOrange,
                        isActive: _selectedSkill == _SkillType.pytorch,
                        onTap: () {
                          updateSelectedSkill(_SkillType.pytorch);
                        },
                      ),
                      Skill(
                        type: _SkillType.dart,
                        skillName: 'Dart',
                        skillIconPath: 'assets/images/skill_icon_03.png',
                        shadowColor: Colors.blue,
                        isActive: _selectedSkill == _SkillType.dart,
                        onTap: () {
                          updateSelectedSkill(_SkillType.dart);
                        },
                      ),
                      Skill(
                        type: _SkillType.opencv,
                        skillName: 'OpenCV',
                        skillIconPath: 'assets/images/skill_icon_04.png',
                        shadowColor: Colors.white,
                        isActive: _selectedSkill == _SkillType.opencv,
                        onTap: () {
                          updateSelectedSkill(_SkillType.opencv);
                        },
                      ),
                      Skill(
                        type: _SkillType.flutter,
                        skillName: 'Flutter',
                        skillIconPath: 'assets/images/skill_icon_05.png',
                        shadowColor: Colors.blue,
                        isActive: _selectedSkill == _SkillType.flutter,
                        onTap: () {
                          updateSelectedSkill(_SkillType.flutter);
                        },
                      ),
                      Skill(
                        type: _SkillType.firebase,
                        skillName: 'Firebase',
                        skillIconPath: 'assets/images/skill_icon_06.png',
                        shadowColor: Colors.orange,
                        isActive: _selectedSkill == _SkillType.firebase,
                        onTap: () {
                          updateSelectedSkill(_SkillType.firebase);
                        },
                      ),
                    ],
                  ),
                ),
            ),
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

class Skill extends StatelessWidget {
  final _SkillType type;
  final String skillName;
  final String skillIconPath;
  final Color shadowColor;
  final bool isActive;
  final Function()? onTap;
  
  const Skill({
    super.key, 
    required this.type,
    required this.skillName, 
    required this.skillIconPath, 
    required this.shadowColor,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(12);
    return InkWell(
      borderRadius: borderRadius,
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: isActive?BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: borderRadius,
        ):null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: isActive?[
                  BoxShadow(
                    color: shadowColor.withValues(alpha: 0.6),
                    spreadRadius: 2,
                    blurRadius: 20,
                  ),
                ]:null,
              ),
              child: Image.asset(skillIconPath, width: 40, height: 40)),
            const SizedBox(height: 8),
            Text(
              skillName,
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
