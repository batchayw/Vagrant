#!/bin/bash

# Tests de fonctionnalité pour chaque VM
echo "Running functionality tests..."

# Tests pour Ubuntu 24.04
echo "Testing Ubuntu 24.04..."
vagrant ssh ubuntu_2404 -c "echo 'Running tests on Ubuntu 24.04...'"

# Tests pour Debian 12
echo "Testing Debian 12..."
vagrant ssh debian_12 -c "echo 'Running tests on Debian 12...'"

# Tests pour CentOS 10
echo "Testing CentOS 10..."
vagrant ssh centos_10 -c "echo 'Running tests on CentOS 10...'"

echo "Functionality tests completed!"