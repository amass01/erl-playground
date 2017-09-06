%%%-------------------------------------------------------------------
%%% @author amir
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Sep 2017 17:31
%%%-------------------------------------------------------------------
-module(afile_client).
-author("amir").

%% API
-export([ls/1, get_file/2]).

ls(Server) ->
    Server ! {self(), last_dir},
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
