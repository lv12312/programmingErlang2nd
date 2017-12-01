%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 29. 十一月 2017 下午11:39
%%%-------------------------------------------------------------------
-module(myLists).
-author("lemonlv").

%% API
-export([sum/1, map/2, my_tuple_to_list/1]).

sum([H | T]) -> H + sum(T);
sum([]) -> 0.

map(_, []) -> [];
map(F, [H | T]) -> [F(H) | map(F, T)].

my_tuple_to_list({}) -> [];
my_tuple_to_list(T) ->
  [element(X, T) || X <- lists:seq(1, tuple_size(T))].