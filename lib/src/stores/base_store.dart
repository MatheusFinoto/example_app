
// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

class BaseStore = _BaseStore with _$BaseStore;

abstract class _BaseStore with Store {
  @action
  Map<String, String> getHeader() {
    Map<String, String> header;
    // if (sessionModel == null) {
    //   header = {
    //     "Content-Type": "application/json",
    //   };
    // } else {
    //   header = {
    //     "Content-Type": "application/json",
    //     "Authorization": "Bearer ${sessionModel!.data!.token}",
    //   };
    // }
    header = {};
    return header;
  }
}
