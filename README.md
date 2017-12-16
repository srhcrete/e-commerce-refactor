# E-Commerce Refactor

## Description and Goals.
The original developer of this e-commerce site quit abruptly. The goal of this project is to refactor and add AJAX to shopping cart and product features.  

## Set Up

1. `$ git clone` [this repository](https://github.com/srhcrete/e-commerce-refactor.git)
2. `$ cd e-commerce-refector`
3. `$ bundle`
4. `$ rake db:create`
5. `$ rake db:migrate`
6. `$ rake db:test:prepare` (for testing environment)
7. `$ rake db:seed`
7. `$ rake db:reset` (to perform database create, migrate, & seed in single command)
8. `$ rails s` _to start the server, then navigate to localhost:3000 in your browser._

_To use Stripe for credit card payment:_

1. _Visit [Stripe](https://dashboard.stripe.com/login)_
2. _Login or create an account to get your API keys._
3. _Paste the following text in the .env file and add your own API keys:_
` PUBLISHABLE_KEY=your key here`
`SECRET_KEY=your key here`

## Changes Made

#### AJAX
* added ajax request for updating the carts items when new item added.
* added ajax request for updating the cart when an item is deleted.
* show product details with ajax and jquery.


#### Refactoring

* added flash notice for sign in and sign out.
* fixed deprecated callback method by changing `before_filter` to `before_action` in the Products Controller.
* added validation for order item quantity.
* change the cart item method to update quantity when more than one item of the same order_item is added to the cart. Moved method to the application helper for access throughout the app.
* added Stripe for charges.
* added route to admin and new product page.
* changed orders total_price column from string to decimal to fix charges.
* added thanks route to charges.
* added Paperclip to handle image uploading.
* added avatar to users sign in and and upload for new users.
* add photo to products details page and upload for new products.


## Technologies Used
* _Ruby-on-Rails_
* _ActiveRecord_
* _AJAX_
