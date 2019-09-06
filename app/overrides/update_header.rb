Deface::Override.new(virtual_path:'spree/shared/_header',
  name: 'add phone to header ',
  insert_after: 'header#header',
  text: ' <div class="header_phone">
           PHONE NO.: (+91) 94568-48036
          </div>'
  )
# ----------------- if we want to replace -------------------------

# Deface::Override.new(virtual_path:'spree/shared/_header',
#   name: 'change to phone no ',
#   replace: 'figure#logo',
#   text: ' <div class="header_phone">
#            PHONE NO.: (+91) 94568-48036
#           </div>'
#   )

# -----------------------------------------------------------------