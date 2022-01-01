// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationEvent _$ConversationEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'add':
      return ConversationAddEvent.fromJson(json);
    case 'edit':
      return ConversationEditEvent.fromJson(json);
    case 'delete':
      return ConversationDeleteEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ConversationEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ConversationEventTearOff {
  const _$ConversationEventTearOff();

  ConversationAddEvent add(Message message) {
    return ConversationAddEvent(
      message,
    );
  }

  ConversationEditEvent edit(Message message) {
    return ConversationEditEvent(
      message,
    );
  }

  ConversationDeleteEvent delete(Message message) {
    return ConversationDeleteEvent(
      message,
    );
  }

  ConversationEvent fromJson(Map<String, Object?> json) {
    return ConversationEvent.fromJson(json);
  }
}

/// @nodoc
const $ConversationEvent = _$ConversationEventTearOff();

/// @nodoc
mixin _$ConversationEvent {
  Message get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(Message message) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationEventCopyWith<ConversationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  final ConversationEvent _value;
  // ignore: unused_field
  final $Res Function(ConversationEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class $ConversationAddEventCopyWith<$Res>
    implements $ConversationEventCopyWith<$Res> {
  factory $ConversationAddEventCopyWith(ConversationAddEvent value,
          $Res Function(ConversationAddEvent) then) =
      _$ConversationAddEventCopyWithImpl<$Res>;
  @override
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ConversationAddEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationAddEventCopyWith<$Res> {
  _$ConversationAddEventCopyWithImpl(
      ConversationAddEvent _value, $Res Function(ConversationAddEvent) _then)
      : super(_value, (v) => _then(v as ConversationAddEvent));

  @override
  ConversationAddEvent get _value => super._value as ConversationAddEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConversationAddEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConversationAddEvent implements ConversationAddEvent {
  const _$ConversationAddEvent(this.message, {String? $type})
      : $type = $type ?? 'add';

  factory _$ConversationAddEvent.fromJson(Map<String, dynamic> json) =>
      _$$ConversationAddEventFromJson(json);

  @override
  final Message message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConversationEvent.add(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationAddEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ConversationAddEventCopyWith<ConversationAddEvent> get copyWith =>
      _$ConversationAddEventCopyWithImpl<ConversationAddEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(Message message) delete,
  }) {
    return add(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
  }) {
    return add?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationAddEventToJson(this);
  }
}

abstract class ConversationAddEvent implements ConversationEvent {
  const factory ConversationAddEvent(Message message) = _$ConversationAddEvent;

  factory ConversationAddEvent.fromJson(Map<String, dynamic> json) =
      _$ConversationAddEvent.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  $ConversationAddEventCopyWith<ConversationAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEditEventCopyWith<$Res>
    implements $ConversationEventCopyWith<$Res> {
  factory $ConversationEditEventCopyWith(ConversationEditEvent value,
          $Res Function(ConversationEditEvent) then) =
      _$ConversationEditEventCopyWithImpl<$Res>;
  @override
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ConversationEditEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationEditEventCopyWith<$Res> {
  _$ConversationEditEventCopyWithImpl(
      ConversationEditEvent _value, $Res Function(ConversationEditEvent) _then)
      : super(_value, (v) => _then(v as ConversationEditEvent));

  @override
  ConversationEditEvent get _value => super._value as ConversationEditEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConversationEditEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConversationEditEvent implements ConversationEditEvent {
  const _$ConversationEditEvent(this.message, {String? $type})
      : $type = $type ?? 'edit';

  factory _$ConversationEditEvent.fromJson(Map<String, dynamic> json) =>
      _$$ConversationEditEventFromJson(json);

  @override
  final Message message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConversationEvent.edit(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationEditEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ConversationEditEventCopyWith<ConversationEditEvent> get copyWith =>
      _$ConversationEditEventCopyWithImpl<ConversationEditEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(Message message) delete,
  }) {
    return edit(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
  }) {
    return edit?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationEditEventToJson(this);
  }
}

abstract class ConversationEditEvent implements ConversationEvent {
  const factory ConversationEditEvent(Message message) =
      _$ConversationEditEvent;

  factory ConversationEditEvent.fromJson(Map<String, dynamic> json) =
      _$ConversationEditEvent.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  $ConversationEditEventCopyWith<ConversationEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDeleteEventCopyWith<$Res>
    implements $ConversationEventCopyWith<$Res> {
  factory $ConversationDeleteEventCopyWith(ConversationDeleteEvent value,
          $Res Function(ConversationDeleteEvent) then) =
      _$ConversationDeleteEventCopyWithImpl<$Res>;
  @override
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ConversationDeleteEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationDeleteEventCopyWith<$Res> {
  _$ConversationDeleteEventCopyWithImpl(ConversationDeleteEvent _value,
      $Res Function(ConversationDeleteEvent) _then)
      : super(_value, (v) => _then(v as ConversationDeleteEvent));

  @override
  ConversationDeleteEvent get _value => super._value as ConversationDeleteEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConversationDeleteEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConversationDeleteEvent implements ConversationDeleteEvent {
  const _$ConversationDeleteEvent(this.message, {String? $type})
      : $type = $type ?? 'delete';

  factory _$ConversationDeleteEvent.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDeleteEventFromJson(json);

  @override
  final Message message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConversationEvent.delete(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationDeleteEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ConversationDeleteEventCopyWith<ConversationDeleteEvent> get copyWith =>
      _$ConversationDeleteEventCopyWithImpl<ConversationDeleteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(Message message) delete,
  }) {
    return delete(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
  }) {
    return delete?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(Message message)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDeleteEventToJson(this);
  }
}

abstract class ConversationDeleteEvent implements ConversationEvent {
  const factory ConversationDeleteEvent(Message message) =
      _$ConversationDeleteEvent;

  factory ConversationDeleteEvent.fromJson(Map<String, dynamic> json) =
      _$ConversationDeleteEvent.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  $ConversationDeleteEventCopyWith<ConversationDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
