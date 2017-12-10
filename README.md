# SymbiBake Backend
SymbiBake is a food ordering system for Symbiosis School of Culinary Arts
(SSCA), made by students of Symbiosis Institute of Technology (SIT).

This repository contains the backend of the application.

## Environment Variables
To avoid disclosing production database passwords in the source repository, the
application expects some environment variables and configuration files to be in
place before deployment.

### `/etc/sysconfig/httpd` and `~/.bash_profile`
Exported for `httpd` and current user, respectively.

```
SBAKE_HOSTNAME
SBAKE_DATABASE
SBAKE_USERNAME
SBAKE_PASSWORD
```

### `~/.my.cnf` (for `mysql` client)
```
[client]
host=localhost
user=root
password=PASSWORD
```
