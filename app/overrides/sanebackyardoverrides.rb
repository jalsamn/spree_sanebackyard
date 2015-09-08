Deface::Override.new(:virtual_path => 'spree/admin/shared/_main_menu',
  :name => 'sidemenuedit',
  :insert_before => "erb[silent]:contains('if can? :admin, current_store')",
  :partial => "spree/admin/sidemenuedits")