Deface::Override.new(virtual_path:'spree/shared/_header',
  name: 'add phone to header ',
  insert_after: 'figure#logo',
  text: ' <div class="header_phone">
           PHONE NO.: (+91) 94568-48036
          </div>'
  )