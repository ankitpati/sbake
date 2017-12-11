set @query := concat('create user ', @sbake_username, '@', @sbake_hostname,
                                      ' identified by "', @sbake_password, '"');
prepare stmt from @query;
execute stmt;
deallocate prepare stmt;

set @query := concat('grant all privileges on ', @sbake_database, '.*',
                                 ' to ', @sbake_username, '@', @sbake_hostname);
prepare stmt from @query;
execute stmt;
deallocate prepare stmt;
