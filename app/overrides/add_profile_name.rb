Deface::Override.new(virtual_path:'spree/shared/_main_nav_bar',
  name: 'add profile name to main nav bar',
  insert_after: '#home-link',
  text: ' <li class="profile">
            <%= current_spree_user.try(:email) %>
          </li> '
)