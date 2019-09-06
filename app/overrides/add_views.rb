Deface::Override.new(virtual_path:'spree/products/show',
  name: 'add views to product',
  insert_before: 'div#product-description',
  text: ' <div class="view">
            Views : <%= %>
          </div> '
)