import '../../../data/content/empty_search_view_data.dart';
import '../../../data/enums/empty_search_type.dart';
import '../../../data/models/empty_search_view_model.dart';

EmptySearchViewModel getEmptySearchData(EmptySearchType type) {
  switch (type) {
    case EmptySearchType.food:
      return emptySearchViewData[0];
    case EmptySearchType.groceries:
      return emptySearchViewData[1];
    case EmptySearchType.health:
      return emptySearchViewData[2];
    case EmptySearchType.flowers:
      return emptySearchViewData[3];
    case EmptySearchType.moreShops:
      return emptySearchViewData[4];
  }
}
