// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Repo {

 int get id; String get name; String get fullName; String? get description; String get ownerAvatarUrl; int get stars; int get forks; int get watchers; int get openIssues; String? get language; String get htmlUrl; bool get isFavorite;
/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoCopyWith<Repo> get copyWith => _$RepoCopyWithImpl<Repo>(this as Repo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Repo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.watchers, watchers) || other.watchers == watchers)&&(identical(other.openIssues, openIssues) || other.openIssues == openIssues)&&(identical(other.language, language) || other.language == language)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,ownerAvatarUrl,stars,forks,watchers,openIssues,language,htmlUrl,isFavorite);

@override
String toString() {
  return 'Repo(id: $id, name: $name, fullName: $fullName, description: $description, ownerAvatarUrl: $ownerAvatarUrl, stars: $stars, forks: $forks, watchers: $watchers, openIssues: $openIssues, language: $language, htmlUrl: $htmlUrl, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $RepoCopyWith<$Res>  {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) _then) = _$RepoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String fullName, String? description, String ownerAvatarUrl, int stars, int forks, int watchers, int openIssues, String? language, String htmlUrl, bool isFavorite
});




}
/// @nodoc
class _$RepoCopyWithImpl<$Res>
    implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._self, this._then);

  final Repo _self;
  final $Res Function(Repo) _then;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? ownerAvatarUrl = null,Object? stars = null,Object? forks = null,Object? watchers = null,Object? openIssues = null,Object? language = freezed,Object? htmlUrl = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,watchers: null == watchers ? _self.watchers : watchers // ignore: cast_nullable_to_non_nullable
as int,openIssues: null == openIssues ? _self.openIssues : openIssues // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Repo].
extension RepoPatterns on Repo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Repo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Repo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Repo value)  $default,){
final _that = this;
switch (_that) {
case _Repo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Repo value)?  $default,){
final _that = this;
switch (_that) {
case _Repo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String fullName,  String? description,  String ownerAvatarUrl,  int stars,  int forks,  int watchers,  int openIssues,  String? language,  String htmlUrl,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.ownerAvatarUrl,_that.stars,_that.forks,_that.watchers,_that.openIssues,_that.language,_that.htmlUrl,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String fullName,  String? description,  String ownerAvatarUrl,  int stars,  int forks,  int watchers,  int openIssues,  String? language,  String htmlUrl,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Repo():
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.ownerAvatarUrl,_that.stars,_that.forks,_that.watchers,_that.openIssues,_that.language,_that.htmlUrl,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String fullName,  String? description,  String ownerAvatarUrl,  int stars,  int forks,  int watchers,  int openIssues,  String? language,  String htmlUrl,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.ownerAvatarUrl,_that.stars,_that.forks,_that.watchers,_that.openIssues,_that.language,_that.htmlUrl,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _Repo implements Repo {
  const _Repo({required this.id, required this.name, required this.fullName, this.description, required this.ownerAvatarUrl, required this.stars, required this.forks, required this.watchers, required this.openIssues, this.language, required this.htmlUrl, this.isFavorite = false});
  

@override final  int id;
@override final  String name;
@override final  String fullName;
@override final  String? description;
@override final  String ownerAvatarUrl;
@override final  int stars;
@override final  int forks;
@override final  int watchers;
@override final  int openIssues;
@override final  String? language;
@override final  String htmlUrl;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepoCopyWith<_Repo> get copyWith => __$RepoCopyWithImpl<_Repo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Repo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.watchers, watchers) || other.watchers == watchers)&&(identical(other.openIssues, openIssues) || other.openIssues == openIssues)&&(identical(other.language, language) || other.language == language)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,ownerAvatarUrl,stars,forks,watchers,openIssues,language,htmlUrl,isFavorite);

@override
String toString() {
  return 'Repo(id: $id, name: $name, fullName: $fullName, description: $description, ownerAvatarUrl: $ownerAvatarUrl, stars: $stars, forks: $forks, watchers: $watchers, openIssues: $openIssues, language: $language, htmlUrl: $htmlUrl, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$RepoCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$RepoCopyWith(_Repo value, $Res Function(_Repo) _then) = __$RepoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String fullName, String? description, String ownerAvatarUrl, int stars, int forks, int watchers, int openIssues, String? language, String htmlUrl, bool isFavorite
});




}
/// @nodoc
class __$RepoCopyWithImpl<$Res>
    implements _$RepoCopyWith<$Res> {
  __$RepoCopyWithImpl(this._self, this._then);

  final _Repo _self;
  final $Res Function(_Repo) _then;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? ownerAvatarUrl = null,Object? stars = null,Object? forks = null,Object? watchers = null,Object? openIssues = null,Object? language = freezed,Object? htmlUrl = null,Object? isFavorite = null,}) {
  return _then(_Repo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,watchers: null == watchers ? _self.watchers : watchers // ignore: cast_nullable_to_non_nullable
as int,openIssues: null == openIssues ? _self.openIssues : openIssues // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
