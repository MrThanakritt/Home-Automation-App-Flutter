import 'package:dartz/dartz.dart';

abstract class AuthRepositoty {
  Future<Either> signup();
}
