%%-*- mode: erlang -*-
{application, test,
 [
  {description, "test"},
  {vsn, "1"},
  {modules, [
             test,
             test_app,
             test_sup,
             test_resource
            ]},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib,
                  crypto,
                  mochiweb,
                  webmachine
                 ]},
  {mod, { test_app, []}},
  {env, []}
 ]}.
