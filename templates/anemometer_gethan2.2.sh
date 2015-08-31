#!/bin/bash
pt-query-digest --user=anemometer --password={{ anemometer_mysql_password }} --review h={{ anemometer_mysql_ip }},D=slow_query_log,t=global_query_review --history h={{ anemometer_mysql_ip }},D=slow_query_log,t=global_query_review_history --no-report --limit=0% --filter=" \$event->{Bytes} = length(\$event->{arg}) and \$event->{hostname}=\"localhost\"" {{ anemometer_slow_log_path }}
> {{ anemometer_slow_log_path }}
