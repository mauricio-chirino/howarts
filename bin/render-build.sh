#!/usr/bin/env bash
# exit on error
set -o errexit

# Instala las dependencias necesarias del proyecto
bundle install #--without development test

# Precompila los assets (CSS, JS, etc.)
bundle exec rails assets:precompile

# Limpia los assets precompilados antiguos
bundle exec rails assets:clean

# Realiza las migraciones de la base de datos
bundle exec rails db:migrate
bundle exec rails db:seed