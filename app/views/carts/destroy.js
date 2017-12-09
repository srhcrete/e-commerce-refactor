console.log('made it to ajax request');
$('#edit_order_item_<%= @item.id %>').remove();
$('#total_price').html('<%= number_to_currency @total %>');
$('#cart-items').html('<%= cart_items %>');
