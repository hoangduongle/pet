abstract class Routes {
  Routes._();
  static const WELCOME = _Paths.WELCOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const ADOPT = _Paths.ADOPT;
  static const PETADOPT = _Paths.PETADOPT;
  static const PETOWNER = _Paths.PETOWNER;
}

abstract class _Paths {
  _Paths._();
  static const WELCOME = '/welcome';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const ADOPT = '/adopt';
  static const PETADOPT = '/petadopt';
  static const PETOWNER = '/petowner';
}
