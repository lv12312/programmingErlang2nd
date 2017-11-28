%%%-------------------------------------------------------------------
%%% @author lemonlv
%%% @copyright (C) 2017, lv12312
%%% @doc
%%%
%%% @end
%%% Created : 28. 十一月 2017 下午11:30
%%%-------------------------------------------------------------------
-module(afile_client).
-author("lemonlv").

%% API
-export([ls/1, get_file/2, put_file/3]).

ls(Server) ->
  Server ! {self(), list_dir},
  receive
    {Server, FileList} ->
      FileList
  end.

get_file(Server, File) ->
  Server ! {self(), {get_file, File}},
  receive
    {Server, Content} ->
      Content
  end.

put_file(Server, File, Content) ->
  Server ! {self(), {put_file, File, Content}},
  receive
    {Server, WriteStatus} ->
      case WriteStatus of
        ok ->
          "Write Success, Content:" ++ Content;
        {error, Reason} ->
          "Wirte Error, " ++ Reason
      end
  end.
