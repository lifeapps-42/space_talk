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
    case 'messageRead':
      return ConversationMessageReadEvent.fromJson(json);

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

  ConversationDeleteEvent delete(String messageId) {
    return ConversationDeleteEvent(
      messageId,
    );
  }

  ConversationMessageReadEvent messageRead(String messageId) {
    return ConversationMessageReadEvent(
      messageId,
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(String messageId) delete,
    required TResult Function(String messageId) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
    required TResult Function(ConversationMessageReadEvent value) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  final ConversationEvent _value;
  // ignore: unused_field
  final $Res Function(ConversationEvent) _then;
}

/// @nodoc
abstract class $ConversationAddEventCopyWith<$Res> {
  factory $ConversationAddEventCopyWith(ConversationAddEvent value,
          $Res Function(ConversationAddEvent) then) =
      _$ConversationAddEventCopyWithImpl<$Res>;
  $Res call({Message message});

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

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
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
    required TResult Function(String messageId) delete,
    required TResult Function(String messageId) messageRead,
  }) {
    return add(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
  }) {
    return add?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
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
    required TResult Function(ConversationMessageReadEvent value) messageRead,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
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

  Message get message;
  @JsonKey(ignore: true)
  $ConversationAddEventCopyWith<ConversationAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEditEventCopyWith<$Res> {
  factory $ConversationEditEventCopyWith(ConversationEditEvent value,
          $Res Function(ConversationEditEvent) then) =
      _$ConversationEditEventCopyWithImpl<$Res>;
  $Res call({Message message});

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

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
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
    required TResult Function(String messageId) delete,
    required TResult Function(String messageId) messageRead,
  }) {
    return edit(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
  }) {
    return edit?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
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
    required TResult Function(ConversationMessageReadEvent value) messageRead,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
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

  Message get message;
  @JsonKey(ignore: true)
  $ConversationEditEventCopyWith<ConversationEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDeleteEventCopyWith<$Res> {
  factory $ConversationDeleteEventCopyWith(ConversationDeleteEvent value,
          $Res Function(ConversationDeleteEvent) then) =
      _$ConversationDeleteEventCopyWithImpl<$Res>;
  $Res call({String messageId});
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
    Object? messageId = freezed,
  }) {
    return _then(ConversationDeleteEvent(
      messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDeleteEvent implements ConversationDeleteEvent {
  const _$ConversationDeleteEvent(this.messageId, {String? $type})
      : $type = $type ?? 'delete';

  factory _$ConversationDeleteEvent.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDeleteEventFromJson(json);

  @override
  final String messageId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConversationEvent.delete(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationDeleteEvent &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messageId));

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
    required TResult Function(String messageId) delete,
    required TResult Function(String messageId) messageRead,
  }) {
    return delete(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
  }) {
    return delete?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
    required TResult Function(ConversationMessageReadEvent value) messageRead,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
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
  const factory ConversationDeleteEvent(String messageId) =
      _$ConversationDeleteEvent;

  factory ConversationDeleteEvent.fromJson(Map<String, dynamic> json) =
      _$ConversationDeleteEvent.fromJson;

  String get messageId;
  @JsonKey(ignore: true)
  $ConversationDeleteEventCopyWith<ConversationDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationMessageReadEventCopyWith<$Res> {
  factory $ConversationMessageReadEventCopyWith(
          ConversationMessageReadEvent value,
          $Res Function(ConversationMessageReadEvent) then) =
      _$ConversationMessageReadEventCopyWithImpl<$Res>;
  $Res call({String messageId});
}

/// @nodoc
class _$ConversationMessageReadEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res>
    implements $ConversationMessageReadEventCopyWith<$Res> {
  _$ConversationMessageReadEventCopyWithImpl(
      ConversationMessageReadEvent _value,
      $Res Function(ConversationMessageReadEvent) _then)
      : super(_value, (v) => _then(v as ConversationMessageReadEvent));

  @override
  ConversationMessageReadEvent get _value =>
      super._value as ConversationMessageReadEvent;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(ConversationMessageReadEvent(
      messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationMessageReadEvent implements ConversationMessageReadEvent {
  const _$ConversationMessageReadEvent(this.messageId, {String? $type})
      : $type = $type ?? 'messageRead';

  factory _$ConversationMessageReadEvent.fromJson(Map<String, dynamic> json) =>
      _$$ConversationMessageReadEventFromJson(json);

  @override
  final String messageId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConversationEvent.messageRead(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationMessageReadEvent &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $ConversationMessageReadEventCopyWith<ConversationMessageReadEvent>
      get copyWith => _$ConversationMessageReadEventCopyWithImpl<
          ConversationMessageReadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) add,
    required TResult Function(Message message) edit,
    required TResult Function(String messageId) delete,
    required TResult Function(String messageId) messageRead,
  }) {
    return messageRead(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
  }) {
    return messageRead?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? add,
    TResult Function(Message message)? edit,
    TResult Function(String messageId)? delete,
    TResult Function(String messageId)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationAddEvent value) add,
    required TResult Function(ConversationEditEvent value) edit,
    required TResult Function(ConversationDeleteEvent value) delete,
    required TResult Function(ConversationMessageReadEvent value) messageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationAddEvent value)? add,
    TResult Function(ConversationEditEvent value)? edit,
    TResult Function(ConversationDeleteEvent value)? delete,
    TResult Function(ConversationMessageReadEvent value)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationMessageReadEventToJson(this);
  }
}

abstract class ConversationMessageReadEvent implements ConversationEvent {
  const factory ConversationMessageReadEvent(String messageId) =
      _$ConversationMessageReadEvent;

  factory ConversationMessageReadEvent.fromJson(Map<String, dynamic> json) =
      _$ConversationMessageReadEvent.fromJson;

  String get messageId;
  @JsonKey(ignore: true)
  $ConversationMessageReadEventCopyWith<ConversationMessageReadEvent>
      get copyWith => throw _privateConstructorUsedError;
}
