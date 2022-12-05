import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';

const String AUTH0_DOMAIN = 'pillio-staging.eu.auth0.com';
const String AUTH0_CLIENT_ID = 'bCrty9mVaxI7C9eq4JcxclcClNPOoQ33';

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Credentials? _credentials;

  late Auth0 auth0;
  UserProfile? _userProf;
  UserProfile dummy = const UserProfile(sub: AUTH0_DOMAIN ,name: 'dummy');

  @override
  void initState() {
    super.initState();
    auth0 = Auth0(AUTH0_DOMAIN, AUTH0_CLIENT_ID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('auth0 test'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Testing Auth0 Login/Logout'),
            if (_credentials == null)
              ElevatedButton(
                  onPressed: () async {
                    
                    final credentials = await auth0.webAuthentication().login();
                    //final userProf = await auth0.credentialsManager.credentials();
                    
                    setState(() {
                      //_credentials = credentials;
                      //_userProf = userProf.user;
                    });
                  },
                  child: const Text("Log in")),
            ElevatedButton(
                onPressed: () async {
                  await auth0.webAuthentication().logout();

                  setState(() {
                    _credentials = null;
                  });
                },
                child: const Text("Log out")),
            if (_userProf != null) ProfileView(user: _userProf?? dummy)
          ],
        ),
      ),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key, required this.user}) : super(key: key);

  final UserProfile user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (user.name != null) Text(user.name!),
        if (user.email != null) Text(user.email!)
      ],
    );
  }
}
