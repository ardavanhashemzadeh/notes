/* Show variables to see if settings were applied */
SHOW variables WHERE
variable_name LIKE "%port"
OR variable_name LIKE "server-id"
OR variable_name LIKE "log-bin"
OR variable_name LIKE "innodb_flush_log_at_trx_commit"
OR variable_name LIKE "sync_binlog"
OR variable_name LIKE "bind_address"
OR variable_name LIKE "max_allowed_packet"
OR variable_name LIKE "wait_timeout"
OR variable_name LIKE "interactive_timeout"
