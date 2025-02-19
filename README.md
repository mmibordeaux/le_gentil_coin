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

