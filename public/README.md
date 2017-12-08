#Recent Improvements:

* fixed deprecated callback method by changing `before_filter` to `before_action` in the Products Controller.
* added validation for order item quantity.
* change the cart item method to update quantity when more than one item of the same order_item is added to the cart total. Moved method to the application helper for access throughout the app.
