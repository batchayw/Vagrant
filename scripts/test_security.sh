#!/bin/bash

# Tests de sécurité pour chaque VM
echo "Running security tests..."

# Tests pour Ubuntu 24.04
echo "Testing Ubuntu 24.04..."
vagrant ssh ubuntu_2404 -c "echo 'Running security checks on Ubuntu 24.04...'"

# Tests pour Debian 12
echo "Testing Debian 12..."
vagrant ssh debian_12 -c "echo 'Running security checks on Debian 12...'"

# Tests pour CentOS 10
echo "Testing CentOS 10..."
vagrant ssh centos_10 -c "echo 'Running security checks on CentOS 10...'"

echo "Security tests completed!"