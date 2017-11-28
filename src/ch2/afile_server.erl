%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 28. 十一月 2017 下午11:23
%%%-------------------------------------------------------------------
-module(afile_server).
-author("lemonlv").

%% API
-export([start/1, loop/1]).

start(Dir) -> spawn(afile_server, loop, [Dir]).

loop(Dir) ->
  receive
    {Client, list_dir} ->
      Client ! {self(), file:list_dir(Dir)};
    {Client, {get_file, File}} ->
      Full = filename:join(Dir, File),
      Client ! {self(), file:read_file(Full)}
  end,
  loop(Dir).
