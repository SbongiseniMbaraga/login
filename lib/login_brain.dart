class LoginBrain {
  final String _username = 'ROME';
  final String _password = 'ROME2';

  void validate(userName, userPassword){
    if (userName == _username && userPassword == _password){
      print('Login Successful');
    }else{
      print('Incorrect Credentaisl');
    }
  }
}