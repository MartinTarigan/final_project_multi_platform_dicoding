import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:quickalert/quickalert.dart';

Map dataUser = {
  'martin@dicoding': {
    'username': 'Martin Marcelino',
    'password': '123456',
    'bio':
    'Mahasiswa Fasilkom UI yang penuh ambisi mengasah skill IT dan membangun portofolio karena sadar bahwa hal yang diperlukan dalam dunia industri IT adalah skill dan pengalaman',
    'photo':
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/554802fe-c63a-43b8-b1ce-903ae6324422/dao5ome-bbdfed98-9090-4cae-a57e-cadf00f8fab4.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU1NDgwMmZlLWM2M2EtNDNiOC1iMWNlLTkwM2FlNjMyNDQyMlwvZGFvNW9tZS1iYmRmZWQ5OC05MDkwLTRjYWUtYTU3ZS1jYWRmMDBmOGZhYjQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.14oOP0i89ZCq47zq0w7uCEc7u8h0HBqnqjtd79zqCzE'
  }
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final_Project_Dicoding',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool isHidden = true;
  String usernameUser = '';
  String passwordUser = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    bottom: 10.0, top: 4.0, right: 2.0, left: 2.0),
                decoration: BoxDecoration(
                    color: Color(0xFF5038BC),
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: [
                          const Text('Dev',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 100.0)),
                          const Text(
                            'Pedia',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFD668),
                                fontSize: 100.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                      EdgeInsets.only(top: 4.0, bottom: 4.0, left: 32.0),
                      child: Row(
                        children: [
                          const Text(
                            'USERNAME',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              QuickAlert.show(
                                  context: context,
                                  type: QuickAlertType.info,
                                  text: 'Username: martin@dicoding');
                            },
                            icon: Icon(Icons.question_mark_outlined),
                            color: Color(0xFFFFD668),
                            iconSize: 15,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 32.0, left: 32.0, bottom: 20.0),
                      child: TextField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              hintText: 'Masukkan username Anda disini'),
                          onChanged: (String value) {
                            setState(() {
                              usernameUser = value;
                            });
                          }),
                    ),
                    Container(
                      padding:
                      EdgeInsets.only(top: 4.0, bottom: 4.0, left: 32.0),
                      child: Row(
                        children: [
                          const Text(
                            'PASSWORD',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                QuickAlert.show(
                                    context: context,
                                    type: QuickAlertType.info,
                                    text: 'Password: 123456');
                              },
                              icon: Icon(Icons.question_mark_outlined),
                              color: Color(0xFFFFD668),
                              iconSize: 15)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 32.0, left: 32.0, bottom: 20.0),
                      child: TextField(
                        obscureText: isHidden,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: 'Masukkan password Anda disini'),
                        onChanged: (String value) {
                          setState(() {
                            passwordUser = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF5038BC)),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      if (passwordUser == dataUser[usernameUser]['password'] &&
                          dataUser.keys.contains(usernameUser)) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return ProfilePage(user: usernameUser);
                            }));
                        QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            text: 'Login berhasil');
                      } else if (!dataUser.keys.contains(usernameUser)) {
                        QuickAlert.show(
                            context: context,
                            type: QuickAlertType.error,
                            text: 'Anda belum terdaftar sebagai DevPeders');
                      } else if (passwordUser !=
                          dataUser[usernameUser]['password']) {
                        QuickAlert.show(
                            context: context,
                            type: QuickAlertType.error,
                            text: 'Password yang anda masukkan salah');
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  final String user;

  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFF5038BC),
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30.0))),
                  child: Column(
                    children: <Widget>[
                      const Text('Profile',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white)),
                      SizedBox(height: 10),
                      CircleAvatar(
                        radius: 110,
                        backgroundImage:
                        NetworkImage(dataUser[widget.user]['photo']),
                      ),
                      SizedBox(height: 10),
                      Text(
                        dataUser[widget.user]['username'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Followers',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5),
                              const Text('27',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 1.5,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Following',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5),
                              const Text('15',
                                  style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 6.0, right: 6.0),
                          decoration: BoxDecoration(color: Color(0xFF5038BC)),
                          child: const Text(''),
                        ),
                        Expanded(
                          child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                  left: 6.0,
                                  right: 6.0),
                              decoration:
                              BoxDecoration(color: Color(0xFFFFD668)),
                              child: const Text(
                                'Bio',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 40.0, top: 5, bottom: 5),
                      child: Text(
                        dataUser[widget.user]['bio'],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 6.0, right: 6.0),
                          decoration: BoxDecoration(color: Color(0xFF5038BC)),
                          child: const Text(''),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                  left: 6.0,
                                  right: 6.0),
                              decoration:
                              BoxDecoration(color: Color(0xFFFFD668)),
                              child: const Text(
                                'Skills',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.0, top: 5, bottom: 5, right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF5038BC)),
                                child: const Text('view/hide skills',
                                    style: TextStyle()),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                  ;
                                },
                              ),
                              Positioned(
                                right: -5,
                                top: -15,
                                child: Visibility(
                                  visible: isVisible,
                                  child: badge.Badge(
                                    badgeContent: const Text(
                                      '5',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    badgeStyle: badge.BadgeStyle(
                                        shape: badge.BadgeShape.circle),
                                    badgeAnimation:
                                    badge.BadgeAnimation.scale(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: !isVisible,
                              child: SkillsDetail()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'Anda berhasil logout');
                  },
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsDetail extends StatelessWidget {
  SkillsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(color: Color(0xFF342966)),
            child: const Text(
              'Languages',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(color: Color(0xFF342966)),
            child: const Text('Percentage',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: 10),
        ]),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Card(
            color: Color(0xFF342966),
            child: Card(
              color: Color(0xFF342966),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color(0xFF5038BC),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Python',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Card(
                        color: Color(0xFF5038BC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 7.0, top: 7.0, left: 4.0, right: 4.0),
                          child: const Text(
                            '29%',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color(0xFF5038BC),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/de/thumb/e/e1/Java-Logo.svg/1200px-Java-Logo.svg.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Text('Java',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins')),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Card(
                        color: Color(0xFF5038BC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 7.0, top: 7.0, left: 4.0, right: 4.0),
                          child: const Text(
                            '25%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color(0xFF5038BC),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Dart-logo-icon.svg/2048px-Dart-logo-icon.svg.png'),
                              ),
                              SizedBox(width: 10),
                              const Text(
                                'Dart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Card(
                        color: Color(0xFF5038BC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 7.0, top: 7.0, left: 4.0, right: 4.0),
                          child: const Text(
                            '24%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color(0xFF5038BC),
                          child: Expanded(
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/512px-HTML5_logo_and_wordmark.svg.png?20170517184425'),
                                ),
                                SizedBox(width: 10),
                                const Text(
                                  'HTML',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Card(
                        color: Color(0xFF5038BC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 7.0, top: 7.0, left: 6.0, right: 6.0),
                          child: const Text(
                            '13%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color(0xFF5038BC),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/640px-CSS3_logo_and_wordmark.svg.png'),
                              ),
                              SizedBox(width: 10),
                              const Text(
                                'CSS',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Card(
                        color: Color(0xFF5038BC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 7.0, top: 7.0, left: 7.5, right: 7.5),
                          child: const Text(
                            '9%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
