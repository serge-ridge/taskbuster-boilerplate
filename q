/app/.heroku/python/lib/python3.7/site-packages/psycopg2/__init__.py:144: UserWarning: The psycopg2 wheel package will be renamed from release 2.8; in order to keep installing from binary please use "pip install psycopg2-binary" instead. For details see: <http://initd.org/psycopg/docs/install.html#binary-install-from-pypi>.
  """)
Traceback (most recent call last):
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 216, in ensure_connection
    self.connect()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 194, in connect
    self.connection = self.get_new_connection(conn_params)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/postgresql/base.py", line 178, in get_new_connection
    connection = Database.connect(**conn_params)
  File "/app/.heroku/python/lib/python3.7/site-packages/psycopg2/__init__.py", line 130, in connect
    conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
psycopg2.OperationalError: could not connect to server: No such file or directory
	Is the server running locally and accepting
	connections on Unix domain socket "/var/run/postgresql/.s.PGSQL.5432"?


The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "manage.py", line 15, in <module>
    execute_from_command_line(sys.argv)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/__init__.py", line 381, in execute_from_command_line
    utility.execute()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/__init__.py", line 375, in execute
    self.fetch_command(subcommand).run_from_argv(self.argv)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/base.py", line 316, in run_from_argv
    self.execute(*args, **cmd_options)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/base.py", line 353, in execute
    output = self.handle(*args, **options)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/base.py", line 83, in wrapped
    res = handle_func(*args, **kwargs)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/core/management/commands/makemigrations.py", line 103, in handle
    loader.check_consistent_history(connection)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/migrations/loader.py", line 281, in check_consistent_history
    applied = recorder.applied_migrations()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/migrations/recorder.py", line 61, in applied_migrations
    if self.has_table():
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/migrations/recorder.py", line 44, in has_table
    return self.Migration._meta.db_table in self.connection.introspection.table_names(self.connection.cursor())
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 255, in cursor
    return self._cursor()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 232, in _cursor
    self.ensure_connection()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 216, in ensure_connection
    self.connect()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/utils.py", line 89, in __exit__
    raise dj_exc_value.with_traceback(traceback) from exc_value
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 216, in ensure_connection
    self.connect()
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/base/base.py", line 194, in connect
    self.connection = self.get_new_connection(conn_params)
  File "/app/.heroku/python/lib/python3.7/site-packages/django/db/backends/postgresql/base.py", line 178, in get_new_connection
    connection = Database.connect(**conn_params)
  File "/app/.heroku/python/lib/python3.7/site-packages/psycopg2/__init__.py", line 130, in connect
    conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
django.db.utils.OperationalError: could not connect to server: No such file or directory
	Is the server running locally and accepting
	connections on Unix domain socket "/var/run/postgresql/.s.PGSQL.5432"?

