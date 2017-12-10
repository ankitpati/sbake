drop user if exists sbake@localhost;
create user sbake@localhost identified by @sbake_password;

grant usage on *.* to sbake@localhost;
grant all privileges on sbake.* to sbake@localhost;
