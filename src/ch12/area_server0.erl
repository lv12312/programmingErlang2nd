%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2018, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 06. 一月 2018 下午11:14
%%%-------------------------------------------------------------------
-module(area_server0).
-author("lemonlv").

%% API
-export([loop/0]).


loop() ->
  receive
    {rectangle, Width, Ht} ->
      io:format("Area of rectangle is ~p~n", [Width * Ht]),
      loop();
    {squre, Side} ->
      io:format("Area of square is ~p~n", [Side * Side]),
      loop()
  end.