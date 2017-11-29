%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 29. 十一月 2017 下午11:41
%%%-------------------------------------------------------------------
-module(shop2).
-author("lemonlv").

%% API
-export([total/1]).
-import(lists, [map/2, sum/1]).

total(L) ->
  sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).
