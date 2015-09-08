Deface::Override.new(:virtual_path => 'spree/admin/shared/main_menu',
  :name => 'sidemenuedit',
  :insert_bottom => "[data-hook='admin_tabs']",
  :partial => "spree/admin/sidemenuedits")
