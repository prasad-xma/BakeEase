import '../entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  // constructor to initialize all fields
  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  // empty user instance for initial state and preventing null errors
  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  // convert model to entity
  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  // convert entity to model
  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      hasActiveCart: entity.hasActiveCart
    );
  }

  // this print the user details without object reference
  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }
}
