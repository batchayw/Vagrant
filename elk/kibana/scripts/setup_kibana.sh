#!/bin/bash

# Installation et configuration de Kibana
echo "Setting up Kibana..."

# Téléchargement et installation de Kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.10.1-amd64.deb
sudo dpkg -i kibana-7.10.1-amd64.deb

# Configuration de Kibana
sudo cp /vagrant/elk/kibana/config/kibana.yml /etc/kibana/kibana.yml

# Démarrage du service Kibana
sudo systemctl start kibana
sudo systemctl enable kibana

echo "Kibana setup completed!"