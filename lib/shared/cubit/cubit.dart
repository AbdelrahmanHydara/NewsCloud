import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/modules/business/business_screen.dart';
import 'package:news/modules/science/science_screen.dart';
import 'package:news/modules/sports/sports_screen.dart';
import 'package:news/modules/technology/technology_screen.dart';
import 'package:news/shared/cubit/states.dart';
import 'package:news/shared/network/local/cache_helper.dart';
import 'package:news/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsState> {

  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  changeAppMode({
    bool? fromShared,
})
  {
    if(fromShared != null)
    {
      isDark = fromShared;
    } else
    {
      isDark = !isDark;
      CacheHelper.savaData(key: 'isDark', value: isDark).
      then((value)
      {
        emit(ChangeAppModeState());
      });
    }
  }

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.computer,
      ),
      label: 'Technology',
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    TechnologyScreen(),
  ];

  changeBottomNavBar(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }

  List<dynamic> business = [];

  getBusiness() {
    DioHelper.getData(url: 'v2/top-headlines', query:
    {
      'category': 'business',
      'country': 'eg',
      'apiKey': 'dcbeb67c783d4c82ae879b2243d3a2fb',
    }).then((value) {
      business = value.data['articles'];
      emit(GetBusinessSuccessState());
    }).catchError((error) {
      emit(GetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];

  getSports() {
    DioHelper.getData(url: 'v2/top-headlines', query: {

      'category': 'sports',
      'country': 'eg',
      'apiKey': 'dcbeb67c783d4c82ae879b2243d3a2fb',
    }).then((value) {
      sports = value.data['articles'];
      emit(GetSportsSuccessState());
    }).catchError((error) {
      emit(GetSportsErrorState(error.toString()));
    });
  }

  List<dynamic> science = [];

  getScience() {
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'category': 'science',
      'country': 'eg',
      'apiKey': 'dcbeb67c783d4c82ae879b2243d3a2fb',
    }).then((value) {
      science = value.data['articles'];
      emit(GetScienceSuccessState());
    }).catchError((error) {
      emit(GetScienceErrorState(error.toString()));
    });
  }

  List<dynamic> technology = [];

  getTechnology() {
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'category': 'technology',
      'country': 'eg',
      'apiKey': 'dcbeb67c783d4c82ae879b2243d3a2fb',
    }).then((value) {
      technology = value.data['articles'];
      emit(GetTechnologySuccessState());
    }).catchError((error) {
      emit(GetTechnologyErrorState(error.toString()));
    });
  }

}
