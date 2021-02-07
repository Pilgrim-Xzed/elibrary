import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:elibrary/domain/auth/auth_failure.dart';
import 'package:elibrary/domain/auth/user.dart';

import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<void> signOut();
}
