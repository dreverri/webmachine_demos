%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(mustache_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    Ctx = dict:from_list([{var1, "Value 1"},{var2, "Value 2"}]),
    Tfun = mustache:compile(mustache_template),
    Body = mustache:render(mustache_template, Tfun, Ctx),
    {Body, ReqData, State}.
