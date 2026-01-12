// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_property_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostPropertyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostPropertyEvent()';
}


}

/// @nodoc
class $PostPropertyEventCopyWith<$Res>  {
$PostPropertyEventCopyWith(PostPropertyEvent _, $Res Function(PostPropertyEvent) __);
}


/// Adds pattern-matching-related methods to [PostPropertyEvent].
extension PostPropertyEventPatterns on PostPropertyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostPropertyEventPostProperty value)?  postProperty,TResult Function( PostPropertyEventReset value)?  reset,TResult Function( PostPropertyEventPickImage value)?  pickImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostPropertyEventPostProperty() when postProperty != null:
return postProperty(_that);case PostPropertyEventReset() when reset != null:
return reset(_that);case PostPropertyEventPickImage() when pickImage != null:
return pickImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostPropertyEventPostProperty value)  postProperty,required TResult Function( PostPropertyEventReset value)  reset,required TResult Function( PostPropertyEventPickImage value)  pickImage,}){
final _that = this;
switch (_that) {
case PostPropertyEventPostProperty():
return postProperty(_that);case PostPropertyEventReset():
return reset(_that);case PostPropertyEventPickImage():
return pickImage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostPropertyEventPostProperty value)?  postProperty,TResult? Function( PostPropertyEventReset value)?  reset,TResult? Function( PostPropertyEventPickImage value)?  pickImage,}){
final _that = this;
switch (_that) {
case PostPropertyEventPostProperty() when postProperty != null:
return postProperty(_that);case PostPropertyEventReset() when reset != null:
return reset(_that);case PostPropertyEventPickImage() when pickImage != null:
return pickImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PostPropertyEntities data)?  postProperty,TResult Function()?  reset,TResult Function( String source)?  pickImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostPropertyEventPostProperty() when postProperty != null:
return postProperty(_that.data);case PostPropertyEventReset() when reset != null:
return reset();case PostPropertyEventPickImage() when pickImage != null:
return pickImage(_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PostPropertyEntities data)  postProperty,required TResult Function()  reset,required TResult Function( String source)  pickImage,}) {final _that = this;
switch (_that) {
case PostPropertyEventPostProperty():
return postProperty(_that.data);case PostPropertyEventReset():
return reset();case PostPropertyEventPickImage():
return pickImage(_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PostPropertyEntities data)?  postProperty,TResult? Function()?  reset,TResult? Function( String source)?  pickImage,}) {final _that = this;
switch (_that) {
case PostPropertyEventPostProperty() when postProperty != null:
return postProperty(_that.data);case PostPropertyEventReset() when reset != null:
return reset();case PostPropertyEventPickImage() when pickImage != null:
return pickImage(_that.source);case _:
  return null;

}
}

}

/// @nodoc


class PostPropertyEventPostProperty implements PostPropertyEvent {
  const PostPropertyEventPostProperty({required this.data});
  

 final  PostPropertyEntities data;

/// Create a copy of PostPropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostPropertyEventPostPropertyCopyWith<PostPropertyEventPostProperty> get copyWith => _$PostPropertyEventPostPropertyCopyWithImpl<PostPropertyEventPostProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyEventPostProperty&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PostPropertyEvent.postProperty(data: $data)';
}


}

/// @nodoc
abstract mixin class $PostPropertyEventPostPropertyCopyWith<$Res> implements $PostPropertyEventCopyWith<$Res> {
  factory $PostPropertyEventPostPropertyCopyWith(PostPropertyEventPostProperty value, $Res Function(PostPropertyEventPostProperty) _then) = _$PostPropertyEventPostPropertyCopyWithImpl;
@useResult
$Res call({
 PostPropertyEntities data
});


$PostPropertyEntitiesCopyWith<$Res> get data;

}
/// @nodoc
class _$PostPropertyEventPostPropertyCopyWithImpl<$Res>
    implements $PostPropertyEventPostPropertyCopyWith<$Res> {
  _$PostPropertyEventPostPropertyCopyWithImpl(this._self, this._then);

  final PostPropertyEventPostProperty _self;
  final $Res Function(PostPropertyEventPostProperty) _then;

/// Create a copy of PostPropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(PostPropertyEventPostProperty(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PostPropertyEntities,
  ));
}

/// Create a copy of PostPropertyEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostPropertyEntitiesCopyWith<$Res> get data {
  
  return $PostPropertyEntitiesCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class PostPropertyEventReset implements PostPropertyEvent {
  const PostPropertyEventReset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyEventReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostPropertyEvent.reset()';
}


}




/// @nodoc


class PostPropertyEventPickImage implements PostPropertyEvent {
  const PostPropertyEventPickImage({required this.source});
  

 final  String source;

/// Create a copy of PostPropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostPropertyEventPickImageCopyWith<PostPropertyEventPickImage> get copyWith => _$PostPropertyEventPickImageCopyWithImpl<PostPropertyEventPickImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyEventPickImage&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'PostPropertyEvent.pickImage(source: $source)';
}


}

/// @nodoc
abstract mixin class $PostPropertyEventPickImageCopyWith<$Res> implements $PostPropertyEventCopyWith<$Res> {
  factory $PostPropertyEventPickImageCopyWith(PostPropertyEventPickImage value, $Res Function(PostPropertyEventPickImage) _then) = _$PostPropertyEventPickImageCopyWithImpl;
@useResult
$Res call({
 String source
});




}
/// @nodoc
class _$PostPropertyEventPickImageCopyWithImpl<$Res>
    implements $PostPropertyEventPickImageCopyWith<$Res> {
  _$PostPropertyEventPickImageCopyWithImpl(this._self, this._then);

  final PostPropertyEventPickImage _self;
  final $Res Function(PostPropertyEventPickImage) _then;

/// Create a copy of PostPropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? source = null,}) {
  return _then(PostPropertyEventPickImage(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
