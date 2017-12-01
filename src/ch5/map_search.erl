%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 01. 十二月 2017 下午11:37
%%%-------------------------------------------------------------------
-module(map_search).
-author("lemonlv").

%% API
-export([map_search_pred/2]).

map_search_pred(Map, Pred) ->
  Acc = [{Key, Value} || {Key, Value} <- maps:to_list(Map), Pred(Key, Value) =:= true],
  case Acc of
    [_ | _] -> [{K, V} | _] = Acc,
      {K, V};
    [] ->
      {}
  end.