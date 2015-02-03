# Spark + Cassandra cluster setup and usage examples

Set of Ansible deployment roles and Spark examples to run local virtual cluster or deploy C*+Spark cluster at your own servers.

##### Software you need
Tested with the next versions of tools:
* Ansible **1.8.2**
* Vagrant **1.7.2**
* SBT **0.13.6**

##### Directory layout
* ```./deployment``` - set of Ansible roles and deployment scripts to automate C*+Spark cluster roll-out. Tested with ubuntu/trusty in Vagrant.
* ```./spark-examples``` - set of examples taken from [DataStax Cassandra documentation][1]

##### Launching the cluster
* For local virtual clusters it is recommended to launch deployment process with ```./deployment/deploy.sh``` with one node, then pack it in Vagrant box to lower down the time of whole deployment. In case of full deploy C* and Spark binaries will be downloaded for each node
* You have to install the same Spark version on your local machine in case you want to launch ```spark-submit``` without ssh-ing to the cluster nodes

[1]: https://github.com/datastax/spark-cassandra-connector#documentation