abstract class Routes {
  Routes._();
  static const WELCOME = _Paths.WELCOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const ADOPT = _Paths.ADOPT;
  static const PETADOPT = _Paths.PETADOPT;
  static const PETADOPTDETAIL = _Paths.PETADOPTDETAIL;
  static const PETINFO = _Paths.PETINFO;
  static const PETOWNER = _Paths.PETOWNER;
  static const MAIN = _Paths.MAIN;
  static const SERVICE = _Paths.SERVICE;
  static const SEARCHSERVICE = _Paths.SEARCHSERVICE;
  static const SERVICEDETAIL = _Paths.SERVICEDETAIL;
}

abstract class _Paths {
  _Paths._();
  static const WELCOME = '/welcome';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const ADOPT = '/adopt';
  static const PETADOPT = '/petadopt';
  static const PETADOPTDETAIL = '/petadoptdetail';
  static const PETINFO = '/petinfo';
  static const PETOWNER = '/petowner';
  static const MAIN = '/main';
  static const SERVICE = '/service';
  static const SEARCHSERVICE = '/searchservice';
  static const SERVICEDETAIL = '/servicedetail';
}
