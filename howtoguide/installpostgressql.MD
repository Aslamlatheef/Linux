# Install the PostgreSQL Software

Open the distribution .repo file in vi:$ sudo 

```
vi /etc/yum.repos.d/CentOS-Base.repo
```

### Exclude PostgreSQL by appending the following line to both the [base] and [updates] sections:

```
$ exclude=postgresql*
```

Put a blank line in after each of these, between them and the sections that follow them.


### Download and install the PGDG file from postgresql.org:
 
```
$sudo yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
```

Install PostgreSQL 12:

```
$ sudo yum install -y postgresql12-server postgresql12-contrib
```

### Initialize the Database

```
$ sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
```

### Start and enable the postgresql-12 service:

```
$ sudo systemctl start postgresql-12 

$ sudo systemctl enable postgresql-12

```

### Connect as the Default User PGSQL

Change to the postgres user and launch 

```
$ sudo su - postgres 
$ psql
```
