%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 09. 十二月 2017 下午11:47
%%%-------------------------------------------------------------------
-module(test1).
-author("lemonlv").

%% API
-export([f1/0]).


f1() ->
  X = erlang:time(),
  seconds(X).

seconds({_Year, _Month, _Day, Hour, Min, Sec}) ->
  (Hour * 60 + Min) * 60 + Sec.