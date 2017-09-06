%%%-------------------------------------------------------------------
%%% @author amir
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Sep 2017 17:13
%%%-------------------------------------------------------------------
-module(afile_server).
-author("amir").

%% API
-export([start/1, loop/1]).

start(Dir) -> spawn(afile_server, loop, [Dir]).

loop(Dir) ->
    receive
        {Client, last_dir} ->
            Client ! {self(), file:last_dir(Dir)};
        {Client, {get_file, File}} ->
            Full = filenane:join(Dir, File),
            Client ! {self(), file:read_file(Full)}
    end,
    loop(Dir).
