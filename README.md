# OTUS_Homework_8
 
Project creates one YC LB, 2 nginx proxy server, 2 nginx+php-fpm+wordpress backends, pxc cluster+proxysql(3 servers), kafka server, OpenSearch cluster(3 servers) and OpenSearch Dashboard.\
### Project Scheme
![Project Scheme](https://github.com/makkorostelev/OTUS_Homework_8/blob/main/Screenshots/scheme.png)\


### Prerequisite

- **Ansible 2.9+**
- **Java 8**

To work with the project you need to write your data into variables.tf.\
![Variables](https://github.com/makkorostelev/OTUS_Homework_8/blob/main/Screenshots/variables.png)\
Then enter the commands:
`terraform init`\
`terraform apply`

After ~5 minutes project will be initialized and run:\
Below there is an example of successful set up:

```
Outputs:

admin_ip = "51.250.46.192"
backend_ips = [
  "10.5.0.4",
  "10.5.0.30",
]
database_ips = [
  "10.5.0.24",
  "10.5.0.18",
  "10.5.0.25",
]
kafka_ip = "10.5.0.10"
lb_ip = "51.250.45.200"
nginx_ips = [
  "10.5.0.14",
  "10.5.0.20",
]
opensearch_dashboard_ip = "51.250.43.49"
opensearch_ips = [
  "10.5.0.28",
  "10.5.0.23",
  "10.5.0.35",
]

```

To log in to OpenSearch Dashboard go to http://opensearch_dashboard_ip:5601 and enter the following credentials:
Username: `admin`
Password: `Test@123`

On the Discover tab you can view syslog from all project servers
![Opensearch_discover](https://github.com/makkorostelev/OTUS_Homework_8/blob/main/Screenshots/opensearch_discover.png)

You can go to http://lb_ip and add your wordpress template to that installation :\
![Wordpress](https://github.com/makkorostelev/OTUS_Homework_8/blob/main/Screenshots/wordpress.png)
Even if one of nginx or pxc servers will be shutdown everything will work as it should
