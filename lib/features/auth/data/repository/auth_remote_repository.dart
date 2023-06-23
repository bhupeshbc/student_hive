import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_hive/core/failure/failure.dart';
import 'package:student_hive/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:student_hive/features/auth/domain/entity/student_entity.dart';
import 'package:student_hive/features/auth/domain/repository/auth_repository.dart';

final AuthRemoteRepositoryProvider =
    Provider.autoDispose<IAuthRepository>((ref) {
  return AuthRemoteRepository(
    ref.read(authRemoteDataSourceProvider),
  );
});

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) {
    return _authRemoteDataSource.uploadProfilePicture(file);
  }

  AuthRemoteRepository(this._authRemoteDataSource);

  @override
  Future<Either<Failure, bool>> loginStudent(String username, String password) {
    // TODO: implement loginStudent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> registerStudent(StudentEntity student) {
    // TODO: implement registerStudent
    throw UnimplementedError();
  }
}
