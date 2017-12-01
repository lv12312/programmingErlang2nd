%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 01. 十二月 2017 下午11:09
%%%-------------------------------------------------------------------
-module(math_functions).
-author("lemonlv").

%% API
-export([even/1, odd/1, filter/2, split/1, split2/1]).

even(X) ->
  X rem 2 == 0.

odd(X) ->
  X rem 2 == 1.

filter(F, L) ->
  Filtered = [X || X <- L, F(X) =:= true],
  Filtered.


split(L) ->
  odds_and_evens_acc(L, [], []).
odds_and_evens_acc([H | T], Odds, Evens) ->
  case (H rem 2) of
    1 -> odds_and_evens_acc(T, [H | Odds], Evens);
    0 -> odds_and_evens_acc(T, Odds, [H | Evens])
  end;
odds_and_evens_acc([], Odds, Evens) ->
  [lists:reverse(Odds), lists:reverse(Evens)].

split2(L) ->
  Odds = filter(fun(X) -> X rem 2 =:= 1 end, L),
  Evens = filter(fun(X) -> X rem 2 =:= 0 end, L),
  {Odds, Evens}.
