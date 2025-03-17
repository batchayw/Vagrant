#!/bin/bash

# Installation et configuration de Logstash
echo "Setting up Logstash..."

# Téléchargement et installation de Logstash
wget https://artifacts.elastic.co/downloads/logstash/logstash-7.10.1.deb
sudo dpkg -i logstash-7.10.1.deb

# Configuration de Logstash
sudo cp /vagrant/elk/logstash/config/logstash.conf /etc/logstash/conf.d/logstash.conf

# Démarrage du service Logstash
sudo systemctl start logstash
sudo systemctl enable logstash

echo "Logstash setup completed!"