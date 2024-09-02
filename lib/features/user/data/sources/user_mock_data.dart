import 'package:beneficiary/features/user/data/models/user_model.dart';

UserModel mockUser = UserModel.fromJson(_json);
final _json = {
  "userType": "Guest",
  "id": 123,
  "name": "John Doe",
  "userName": "john_doe",
  "balance": 4000,
  "isVerified": true,
  "dateOfBirth": "1990-01-01T00:00:00Z",
  "createdDate": "2024-01-01T10:00:00Z",
  "updatedDate": "2024-09-01T12:00:00Z"
};
