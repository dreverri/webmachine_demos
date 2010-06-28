%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(static_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    Static = filename:join([filename:dirname(code:which(?MODULE)),
                            "..", "priv", "www", "static.html"]),
    {ok, Body} = file:read_file(Static),
    {Body, ReqData, State}.
