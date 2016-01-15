# Scripts for running Docker Containers on Amazon ECS

This is basically just a bunch of helper snippets/scripts/POCs to help you get your Docker Containers up and running on Amazon ECS (EC2 Container Service).

## Get it running

1. Install and setup the AWS CLI tools on you local development machine
2. Install the ECS Task Definition:
```aws ecs register-task-definition --cli-input-json file://dockerenv-task.json```
3. Run the task via the ECS Console

## Check the log output

To check the output from the scripts, ssh to your EC2 instance used by ECS. 
Then find the (stopped) container ID with this command:
```docker ps -a```

E.g. the container ID could be ```c419b392fad5```

Then check the logs:
```docker logs c419b392fad5```

Sample output:

```
The CONTAINER_IP: 172.17.0.3
The EC2_PRIVATE_IP: 10.0.1.173
```

## Why?

I created this because I needed to know the private IP address of the EC2 instance hosting my Docker Containers.

In particular I needed this to be able to start a Datomic Transactor in the correct way.

## What else?

PRs accepted!

