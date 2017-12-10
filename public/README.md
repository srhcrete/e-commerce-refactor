#Recent Improvements:

* fixed deprecated callback method by changing `before_filter` to `before_action` in the Products Controller.
* added validation for order item quantity.
* change the cart item method to update quantity when more than one item of the same order_item is added to the cart. Moved method to the application helper for access throughout the app.
* added ajax request for updating the carts items when new item added. 
* added ajax request for updating the cart when an item is deleted.
* added flash notice for sign in and sign out.
* added Stripe for charges.
* added route to admin and new product page.
* changed orders total_price column from string to decimal to fix charges.
* added thanks route to charges.
