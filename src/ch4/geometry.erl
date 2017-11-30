%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 29. 十一月 2017 下午11:18
%%%-------------------------------------------------------------------
-module(geometry).
-author("lemonlv").

%% API
-export([area/1, perimeter/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({squre, Side}) -> Side * Side;
area({circle, Radius}) -> Radius * Radius * 3.14.


perimeter({rectangle, Width, Height}) -> (Width + Height) * 2;
perimeter({squre, Side}) -> Side * 4;
perimeter({circle, Radius}) -> 2 * Radius * 3.14.
