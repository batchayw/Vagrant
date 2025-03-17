#!/bin/bash

# Installation et configuration d'Elasticsearch
echo "Setting up Elasticsearch..."

# Téléchargement et installation d'Elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.1-amd64.deb
sudo dpkg -i elasticsearch-7.10.1-amd64.deb

# Configuration d'Elasticsearch
sudo cp /vagrant/elk/elasticsearch/config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

# Démarrage du service Elasticsearch
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch

echo "Elasticsearch setup completed!"