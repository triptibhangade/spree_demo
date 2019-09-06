Deface::Override.new(virtual_path:'spree/shared/_main_nav_bar',
  name: 'add profile name to main nav bar',
  insert_before: 'div#main-nav-bar',
  text: ' <div class="profile">
            
          </div> '
)