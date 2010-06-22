%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(test_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    Cookie = case wrq:get_cookie_value("test", ReqData) of
		 undefined -> "";
		 Value -> Value
	     end,
    {"<html><body>Cookie:" ++ Cookie ++ "</body></html>", ReqData, State}.
