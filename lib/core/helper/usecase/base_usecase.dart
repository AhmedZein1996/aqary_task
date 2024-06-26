
import 'package:dartz/dartz.dart';
import '../../network/failure.dart';

abstract class Usecase<Out,In> {
  Future<Either<Failure,Out>> call(In input);
}