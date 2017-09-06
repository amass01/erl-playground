%%%-------------------------------------------------------------------
%%% @author amir
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 29. Aug 2017 17:26
%%%-------------------------------------------------------------------
-module(tut2).
-author("amir").

%% API
-export([convert/2]).

convert(M, inch) ->
  M / 2.54;

convert(N, centimeter) ->
  N * 2.54.


