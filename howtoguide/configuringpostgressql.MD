# configuring postgressql

PostgreSQL is the world's most advanced open source database. It's stability, functionality, and extensibility make it a primary choice for an RDBMS solution.

### The Scenario

We are the DBAs for Awesome Company, and have been tasked with configuring a PostgreSQL database server to facilitate the development of a new web application. This will be accomplished by:

Administering permissions via roles:

- Secure the postgres role and create a new role named acwebapp for a new database named acweb.

Enabling remote connections:

- Set the server to listen on all addresses and accept password authentication on them.

Setting server-level options:

- Set the port to ```1433```, max connections to ```500```, and shared buffers to ```256mb```.

### Logging In
Use the credentials provided on the hands-on lab overview page, and log in as ```cloud_user```.

### Administer Permissions Via Roles

Change to the postgres user and launch psql:

```sudo su - postgres

psql
```
Give the postgres role a password (enter and confirm):

```\password postgres```

Create a database for the web application:

```CREATE DATABASE testdb;```

Connect to the new database:

```\c acweb;```

Create a role for the web application:

```CREATE ROLE acwebapp WITH LOGIN;```

Give the acwebapp role a password (enter and confirm):

``` \password acwebapp```
### Enable Remote Connections

Exit back to ```cloud_user```, and edit ```postgresql.conf``` to listen on any address:

```
\q

exit

sudo vi /var/lib/pgsql/12/data/postgresql.conf
```
Search for listen_addresses, uncomment it, and set it to *. Save and quit. Edit pg_hba.conf:
```
sudo vi /var/lib/pgsql/12/data/pg_hba.conf
```
Append this line to the bottom of the file:

```
host all all 0.0.0.0/0 md5
```

Save and exit.

Restart the PostgreSQL service:
```
sudo systemctl restart postgresql-12
```

### Set Server-Level Options

Edit the postgresql.conf file:
```
sudo vi /var/lib/pgsql/12/data/postgresql.conf
```

Find the port setting under CONNECTIONS AND AUTHENTICATION, uncomment it, and change the value to 1433.
```
port = 1433
```

Below that, change max_connections to 500:
```
max_connections = 500
```

Find the shared_buffers setting under - Memory - and change the value to 256MB:
```
shared_buffers = 256MB
```

Save and exit, then restart the PostgreSQL service:
```
sudo systemctl restart postgresql-12
```

Test Changes

Using an external client, let's connect to the testdb database as acwebapp. (For the purposes of this example we will use pgAdmin, found at https://www.pgadmin.org)

Right-click Servers, go to Create, and click on Server.

Provide a name for the server connection.

On the Connection tab enter the following information:

Hostname/address: The public IP address of our lab server

Port: 1433

Username: acwebapp

Password: The password we set for acwebapp earlier.

Click Save.

If it connects, we have successfully enabled remote connections and provisioned a role for the web application.

Right-click on a database and click Query Tool. Use the following command to verify values for all of the settings that were changed:

```
SELECT name, setting FROM pg_settings
WHERE name IN ('port', 'max_connections', 'shared_buffers');
```

### Conclusion
In the lower pane, we should see our query's output, showing our max_connections, port, and shared_buffers settings. Congratulations!
