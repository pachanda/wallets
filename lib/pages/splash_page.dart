import 'package:ads_pay_app/functions.dart';
import 'package:ads_pay_app/pages/email_verification_page.dart';
import 'package:ads_pay_app/pages/login_page.dart';
import 'package:ads_pay_app/pages/main_page.dart';
import 'package:ads_pay_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late AuthService authServ;

  @override
  void initState() {
    super.initState();
    authServ = context.read<AuthService>();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder(
        stream: authServ.authStateStream,
        builder: (context, snapshot) {
          switch (snapshot.data) {
            case AuthState.emailVerification:
              return EmailVerificationPage();
            case AuthState.signedIn:
              return MainPage();
            case AuthState.unsignedIn:
              return const LoginPage();
            case AuthState.loading:
              return buildSplashPage();
          }
          return buildSplashPage();
        }
      ),
    );
  }
  
  Widget buildSplashPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_balance_wallet_outlined, 
          size: 60, 
          color: Theme.of(context).primaryColor
        ),
        hgh(16),
        const CircularProgressIndicator()
      ],
    );
  }
}