import 'package:flutter/material.dart';
import 'package:flutter_youtube_search_bloc/ui/search/search_bloc.dart';
import 'package:flutter_youtube_search_bloc/ui/search/search_state.dart';
import 'package:flutter_youtube_search_bloc/ui/search/widget/centered_message.dart';
import 'package:flutter_youtube_search_bloc/ui/search/widget/search_bar.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}


class _SearchPageState extends State<SearchPage> {
  final _searchBloc = kiwi.Container().resolve<SearchBloc>();
  final _searchController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _searchBloc,
      child: _buildScaffold(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchBloc.dispose();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
      ),
      body: BlocBuilder(
          bloc: _searchBloc,
          builder: (context, SearchState state) {
            if (state.isInitial) {
              return CenteredMessage(
                message: 'Start searching',
                icon: Icons.ondemand_video,
              );
            }
          }),
    );
  }
}



















