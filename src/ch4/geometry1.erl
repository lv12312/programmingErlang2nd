%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 29. 十一月 2017 下午11:18
%%%-------------------------------------------------------------------
-module(geometry1).
-author("lemonlv").

%% API
-export([area/1, test/0]).

test() ->
  12 = area({rectangle, 3, 4}),
  9 = area({squre, 3}),
  tests_worked.

area({rectangle, Width, Height}) -> Width * Height;
area({squre, Side}) -> Side * Side.