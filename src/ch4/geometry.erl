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
-export([area/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({squre, Side}) -> Side * Side;
area({circle, Radius}) -> Radius * Radius * 3.14.