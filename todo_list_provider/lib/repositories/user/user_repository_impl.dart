import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_list_provider/app/exeption/auth_exeption.dart';
import 'package:todo_list_provider/repositories/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  UserRepositoryImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> register(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e, s) {
      print(e);
      print(s);
      // if (e.code == 'email-already-in-use') {
      //   final loginTypes = await _firebaseAuth.fetchSignInMethodsForEmail(email);
      //   if (loginTypes.contains('password')) {
      //     throw AuthExeption(
      //       message: 'E-mail já cadastrado, favor escolha outro e-mail',
      //     );
      //   } else {
      //     throw AuthExeption(
      //       message:
      //           'E-mail cadastrado com Google, favor faça login com Google',
      //     );
      //   }
      // }
    }
  }
}
