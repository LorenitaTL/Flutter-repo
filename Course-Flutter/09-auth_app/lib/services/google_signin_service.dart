import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  static Future<GoogleSignInAccount> signInWithGoogle() async {
    try {
      final GoogleSignInAccount account = await _googleSignIn.signIn();

      print(account);
      final googleKey = await account.authentication;

      // print("================== ID TOKEN ====================");
      // print(account);
      // print(googleKey.idToken);

      //TODO: Llamar un servicio REST a nuestro backend

      final signInWithGoogleEndPoint = Uri(
          scheme: 'https',
          host: 'flutter-projects.herokuapp.com',
          path: '/google');

      final session = await http
          .post(signInWithGoogleEndPoint, body: {'token': googleKey.idToken});

      print("============== backend ================");
      print(session.body);

      return account;
    } catch (e) {
      print('Error en google SignIn');
      print(e);
      return null;
    }
  }

  static Future SignOut() async {
    await _googleSignIn.signOut();
  }
}
