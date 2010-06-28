%%-*- mode: erlang -*-
{application, test,
 [
  {description, "test"},
  {vsn, "1"},
  {modules, [
             test,
             test_app,
             test_sup,
             cookie_resource,
             static_resource,
             mustache,
             mustache_resource,
             mustache_template
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
