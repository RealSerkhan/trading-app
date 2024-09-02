// ignore_for_file: constant_identifier_names

enum UserType {
  User('users', 'user'),
  Admin('admins', 'admin'),
  Guest('guest', 'guest');

  final String databasePath;
  final String value;
  const UserType(this.databasePath, this.value);

  static UserType fromString(type) {
    switch (type) {
      case 'user':
        return UserType.User;
      case 'admin':
        return UserType.User;
      case 'guest':
        return UserType.Guest;
      default:
        return UserType.User;
    }
  }

  static String toJson(UserType type) {
    return type.value;
  }
}
