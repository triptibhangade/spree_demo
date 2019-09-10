Deface::Override.new(virtual_path:'spree/shared/_main_nav_bar',
  name: 'add contact us to main nav bar',
  insert_after: '#home-link',
  text: ' <li class="contact_us">
            <%= link_to "Contact Us", new_contact_path if current_spree_user %>
          </li> '
)