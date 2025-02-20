# README

```bash
rails new le_gentil_coin

cd le_gentil_coin
code . # Mais pour les Mac ça marche pas toujours

bundle add simple_form
rails generate simple_form:install

rails generate scaffold user pseudonym:string photo:string 

rails generate scaffold offer name:string image:string description:text price:decimal user:references

rails g migration create_offers_users offer:references user:references

rails server
```

## Scalingo

Ajouter ça au Gemfile 

```rb
ruby "3.4.1"
```

Mettre à jour le bundle 
```bash
bundle update --ruby
```

Supprimer le dossier `.github`


Créer un fichier `Procfile``

Mettre ça dedans 
```
web: bundle exec puma -C config/puma.rb
postdeploy: rails db:migrate
```