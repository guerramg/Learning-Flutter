import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> entrarUsuario(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return 'Usuário não encontrado';
        case 'wrong-password':
          return 'Senha Incorreta';
        default:
          return 'Erro ao entrar no sistema';
      }
      return e.code;
    }
    return null;
  }
}

  Future<String?> cadastrarUsuario(
      {required String email, required String senha, required String nome}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: senha);
      await userCredential.user!.updateDisplayName(nome);
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'weak-password':
          return 'Senha Fraca';
        case 'email-already-in-use':
          return 'Email já existe';
      }
    }
  }


Future<String?> redefinicaoSenha({required String email}) async {
  try{
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  } on FirebaseException catch(e){
    switch(e.code){
      case 'user-not-found':
      return 'Usuario não encontrado';
    }
  }
}
