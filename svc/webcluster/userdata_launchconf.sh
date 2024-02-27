#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World from cluster</h1>
<p>DB address: ${userdata_dbaddress}</p>
<p>DB port: ${userdata_dbport}</p>
EOF
hostname >> index.html

nohup busybox httpd -f -p ${userdata_serverport} &