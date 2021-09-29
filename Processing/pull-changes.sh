#!/bin/bash
# Simpelt bash script der henter ændringer fra github men
# beholder brugerens lokale ændringer

# hvis du ønsker at overskrive lokale ændringer
# 1. git clean -fd
# 2. git pull

# læg lokale ændringer til side
git stash
# hent github ændringer 
git pull
# hiv lokale ændringer frem igen
git stash pop