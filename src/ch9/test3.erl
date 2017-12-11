%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2017 上午12:00
%%%-------------------------------------------------------------------
-module(test3).
-author("lemonlv").

%% API
-export([test/0, factorial/1]).

test() -> factorial(-5).

factorial(0) -> 1;
factorial(N) -> N * factorial(N - 1).