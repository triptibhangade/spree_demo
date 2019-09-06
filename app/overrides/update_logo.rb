Deface::Override.new(virtual_path:'spree/shared/_header',
  name: 'change to logo ',
  replace: 'figure#logo',
  text: " <div class= 'logo'>
            <%= link_to image_tag('logo/logo.jpg', size:'70x50'), root_path %>
          </div> "
)