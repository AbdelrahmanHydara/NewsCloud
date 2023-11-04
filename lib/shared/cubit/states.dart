abstract class NewsState {}

class NewsInitialState extends NewsState {}

class ChangeBottomNavBarState extends NewsState {}

class ChangeAppModeState extends NewsState {}

class GetBusinessLoadingState extends NewsState {}

class GetBusinessSuccessState extends NewsState {}

class GetBusinessErrorState extends NewsState
{
  final String error;

  GetBusinessErrorState(this.error);
}

class GetSportsLoadingState extends NewsState {}

class GetSportsSuccessState extends NewsState {}

class GetSportsErrorState extends NewsState
{
  final String error;

  GetSportsErrorState(this.error);
}

class GetScienceLoadingState extends NewsState {}

class GetScienceSuccessState extends NewsState {}

class GetScienceErrorState extends NewsState
{
  final String error;

  GetScienceErrorState(this.error);
}

class GetTechnologyLoadingState extends NewsState {}

class GetTechnologySuccessState extends NewsState {}

class GetTechnologyErrorState extends NewsState
{
  final String error;

  GetTechnologyErrorState(this.error);
}


