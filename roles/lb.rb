name    "lb"
description "haproxy load balancer"
run_list "recipe[motd]"
override_attributes "haproxy" => {
     "app_server_role" => "webserver",
     "member_port" => "80",
}

