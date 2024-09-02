import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:beneficiary/features/beneficiary/domain/repos/beneficiary_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetAllBeneficiariesUseCase
    extends EitherUseCase<List<Beneficiary>, NoParams> {
  const GetAllBeneficiariesUseCase(this._repository);

  final BeneficiaryRepository _repository;

  @override
  Future<Either<Failure, List<Beneficiary>>> doWork(NoParams params) {
    return _repository.getAllBeneficiaries();
  }
}
