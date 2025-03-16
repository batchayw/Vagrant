#!/bin/bash

# Envoi de notifications par Gmail
echo "Sending notification via Gmail..."

# Configuration de l'email
TO="mysol.c.t@gmail.com"
SUBJECT="CI/CD Pipeline Notification"
BODY="The CI/CD pipeline has completed successfully."

# Envoi de l'email
echo -e "Subject: $SUBJECT\n\n$BODY" | sendmail -t $TO

echo "Notification sent!"