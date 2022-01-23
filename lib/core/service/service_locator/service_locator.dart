import 'package:get_it/get_it.dart';
import 'package:swapiflutter/data/repository/implementation/people_repository.dart';
import 'package:swapiflutter/data/repository/interface/i_people_repository.dart';
import 'package:swapiflutter/data/service/http_client/dio_http_client.dart';
import 'package:swapiflutter/data/service/http_client/i_http_client.dart';
import 'package:swapiflutter/domain/store/people_detail_store.dart';
import 'package:swapiflutter/domain/store/people_list_store.dart';
import 'package:swapiflutter/domain/use_case/people/implementation/get_people_detail_use_case.dart';
import 'package:swapiflutter/domain/use_case/people/implementation/get_people_list_use_case.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_detail_use_case.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_list_use_case.dart';
import 'package:swapiflutter/presentation/service/router/auto_router/auto_router.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';

class ServiceLocator {
  static GetIt locator = GetIt.instance;

  static void setupLocator() {
    _setupStores();
    locator.registerSingleton<IRouter>(AutoRouterImplementation());
    locator.registerFactory<IHttpClient>(() => DioHttpClient());
    locator.registerFactory<IPeopleRepository>(
        () => PeopleRepository(httpClient: locator.get<IHttpClient>()));
    _setupUseCases();
  }

  static void _setupStores() {
    locator.registerSingleton<PeopleDetailStore>(PeopleDetailStore());
    locator.registerSingleton<PeopleListStore>(PeopleListStore());
  }

  static void _setupUseCases() {
    locator.registerSingleton<IGetPeopleDetailUseCase>(
        GetPeopleDetailUseCase(repository: locator.get<IPeopleRepository>()));
    locator.registerSingleton<IGetPeopleListUseCase>(
        GetPeopleListUseCase(repository: locator.get<IPeopleRepository>()));
  }
}
