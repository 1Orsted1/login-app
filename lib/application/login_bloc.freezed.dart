// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RequestLogin value)?  requestLogin,TResult Function( _CheckOfLoggedIn value)?  checkIfLogged,TResult Function( _LogOut value)?  logOut,TResult Function( _Register value)?  register,TResult Function( _ListenFireUser value)?  listenFireUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestLogin() when requestLogin != null:
return requestLogin(_that);case _CheckOfLoggedIn() when checkIfLogged != null:
return checkIfLogged(_that);case _LogOut() when logOut != null:
return logOut(_that);case _Register() when register != null:
return register(_that);case _ListenFireUser() when listenFireUser != null:
return listenFireUser(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RequestLogin value)  requestLogin,required TResult Function( _CheckOfLoggedIn value)  checkIfLogged,required TResult Function( _LogOut value)  logOut,required TResult Function( _Register value)  register,required TResult Function( _ListenFireUser value)  listenFireUser,}){
final _that = this;
switch (_that) {
case _RequestLogin():
return requestLogin(_that);case _CheckOfLoggedIn():
return checkIfLogged(_that);case _LogOut():
return logOut(_that);case _Register():
return register(_that);case _ListenFireUser():
return listenFireUser(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RequestLogin value)?  requestLogin,TResult? Function( _CheckOfLoggedIn value)?  checkIfLogged,TResult? Function( _LogOut value)?  logOut,TResult? Function( _Register value)?  register,TResult? Function( _ListenFireUser value)?  listenFireUser,}){
final _that = this;
switch (_that) {
case _RequestLogin() when requestLogin != null:
return requestLogin(_that);case _CheckOfLoggedIn() when checkIfLogged != null:
return checkIfLogged(_that);case _LogOut() when logOut != null:
return logOut(_that);case _Register() when register != null:
return register(_that);case _ListenFireUser() when listenFireUser != null:
return listenFireUser(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String user,  String passw)?  requestLogin,TResult Function()?  checkIfLogged,TResult Function()?  logOut,TResult Function( String user,  String passw)?  register,TResult Function()?  listenFireUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestLogin() when requestLogin != null:
return requestLogin(_that.user,_that.passw);case _CheckOfLoggedIn() when checkIfLogged != null:
return checkIfLogged();case _LogOut() when logOut != null:
return logOut();case _Register() when register != null:
return register(_that.user,_that.passw);case _ListenFireUser() when listenFireUser != null:
return listenFireUser();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String user,  String passw)  requestLogin,required TResult Function()  checkIfLogged,required TResult Function()  logOut,required TResult Function( String user,  String passw)  register,required TResult Function()  listenFireUser,}) {final _that = this;
switch (_that) {
case _RequestLogin():
return requestLogin(_that.user,_that.passw);case _CheckOfLoggedIn():
return checkIfLogged();case _LogOut():
return logOut();case _Register():
return register(_that.user,_that.passw);case _ListenFireUser():
return listenFireUser();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String user,  String passw)?  requestLogin,TResult? Function()?  checkIfLogged,TResult? Function()?  logOut,TResult? Function( String user,  String passw)?  register,TResult? Function()?  listenFireUser,}) {final _that = this;
switch (_that) {
case _RequestLogin() when requestLogin != null:
return requestLogin(_that.user,_that.passw);case _CheckOfLoggedIn() when checkIfLogged != null:
return checkIfLogged();case _LogOut() when logOut != null:
return logOut();case _Register() when register != null:
return register(_that.user,_that.passw);case _ListenFireUser() when listenFireUser != null:
return listenFireUser();case _:
  return null;

}
}

}

/// @nodoc


class _RequestLogin implements LoginEvent {
  const _RequestLogin({required this.user, required this.passw});
  

 final  String user;
 final  String passw;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestLoginCopyWith<_RequestLogin> get copyWith => __$RequestLoginCopyWithImpl<_RequestLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestLogin&&(identical(other.user, user) || other.user == user)&&(identical(other.passw, passw) || other.passw == passw));
}


@override
int get hashCode => Object.hash(runtimeType,user,passw);

@override
String toString() {
  return 'LoginEvent.requestLogin(user: $user, passw: $passw)';
}


}

/// @nodoc
abstract mixin class _$RequestLoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$RequestLoginCopyWith(_RequestLogin value, $Res Function(_RequestLogin) _then) = __$RequestLoginCopyWithImpl;
@useResult
$Res call({
 String user, String passw
});




}
/// @nodoc
class __$RequestLoginCopyWithImpl<$Res>
    implements _$RequestLoginCopyWith<$Res> {
  __$RequestLoginCopyWithImpl(this._self, this._then);

  final _RequestLogin _self;
  final $Res Function(_RequestLogin) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? passw = null,}) {
  return _then(_RequestLogin(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,passw: null == passw ? _self.passw : passw // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckOfLoggedIn implements LoginEvent {
  const _CheckOfLoggedIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckOfLoggedIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.checkIfLogged()';
}


}




/// @nodoc


class _LogOut implements LoginEvent {
  const _LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.logOut()';
}


}




/// @nodoc


class _Register implements LoginEvent {
  const _Register({required this.user, required this.passw});
  

 final  String user;
 final  String passw;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCopyWith<_Register> get copyWith => __$RegisterCopyWithImpl<_Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register&&(identical(other.user, user) || other.user == user)&&(identical(other.passw, passw) || other.passw == passw));
}


@override
int get hashCode => Object.hash(runtimeType,user,passw);

@override
String toString() {
  return 'LoginEvent.register(user: $user, passw: $passw)';
}


}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) = __$RegisterCopyWithImpl;
@useResult
$Res call({
 String user, String passw
});




}
/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? passw = null,}) {
  return _then(_Register(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,passw: null == passw ? _self.passw : passw // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ListenFireUser implements LoginEvent {
  const _ListenFireUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListenFireUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.listenFireUser()';
}


}




/// @nodoc
mixin _$LoginState {

 bool get isLoading; bool get isLoggedIn; AuthSt get authSt; User? get user;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.authSt, authSt) || other.authSt == authSt)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoggedIn,authSt,user);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isLoggedIn: $isLoggedIn, authSt: $authSt, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoggedIn, AuthSt authSt, User? user
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoggedIn = null,Object? authSt = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,authSt: null == authSt ? _self.authSt : authSt // ignore: cast_nullable_to_non_nullable
as AuthSt,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _$Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _$Initial() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _$Initial value)  $default,){
final _that = this;
switch (_that) {
case _$Initial():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _$Initial value)?  $default,){
final _that = this;
switch (_that) {
case _$Initial() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoggedIn,  AuthSt authSt,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _$Initial() when $default != null:
return $default(_that.isLoading,_that.isLoggedIn,_that.authSt,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoggedIn,  AuthSt authSt,  User? user)  $default,) {final _that = this;
switch (_that) {
case _$Initial():
return $default(_that.isLoading,_that.isLoggedIn,_that.authSt,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoggedIn,  AuthSt authSt,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _$Initial() when $default != null:
return $default(_that.isLoading,_that.isLoggedIn,_that.authSt,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _$Initial implements LoginState {
  const _$Initial({required this.isLoading, required this.isLoggedIn, required this.authSt, this.user});
  

@override final  bool isLoading;
@override final  bool isLoggedIn;
@override final  AuthSt authSt;
@override final  User? user;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$InitialCopyWith<_$Initial> get copyWith => __$$InitialCopyWithImpl<_$Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$Initial&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.authSt, authSt) || other.authSt == authSt)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoggedIn,authSt,user);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isLoggedIn: $isLoggedIn, authSt: $authSt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$$InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) _then) = __$$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoggedIn, AuthSt authSt, User? user
});




}
/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(this._self, this._then);

  final _$Initial _self;
  final $Res Function(_$Initial) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoggedIn = null,Object? authSt = null,Object? user = freezed,}) {
  return _then(_$Initial(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,authSt: null == authSt ? _self.authSt : authSt // ignore: cast_nullable_to_non_nullable
as AuthSt,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}


}

// dart format on
