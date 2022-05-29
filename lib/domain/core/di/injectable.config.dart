// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/filter_bloc/filter_bloc.dart' as _i9;
import '../../../application/user/user_bloc.dart' as _i10;
import '../../../infrastructure/Filter/filter_impl.dart' as _i4;
import '../../../infrastructure/Industry/industry_impl.dart' as _i6;
import '../../../infrastructure/User/user_imple.dart' as _i8;
import '../../Filter/filter_service.dart' as _i3;
import '../../Industry/industry_service.dart' as _i5;
import '../../User/user_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.FilterService>(() => _i4.FilterImpl());
  gh.lazySingleton<_i5.IndustryService>(() => _i6.IndustryImplementation());
  gh.lazySingleton<_i7.UserService>(() => _i8.UserImplemmentations());
  gh.factory<_i9.FilterBloc>(() => _i9.FilterBloc(get<_i3.FilterService>()));
  gh.factory<_i10.UserBloc>(() => _i10.UserBloc(get<_i7.UserService>()));
  return get;
}
