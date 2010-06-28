%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(cookie_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    Cookies = wrq:req_cookie(ReqData),
    Body0 = lists:foldl(fun({Key, Value}, Body) ->
                        Body ++ "<div>" ++ Key ++ ": " ++ Value ++ "</div>"
                end,
                "<div><h2>Cookies<h2></div>",
                Cookies),
    {"<html><body>" ++ Body0 ++ "</body></html>", ReqData, State}.
