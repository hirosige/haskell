```
Prefix Verb     URI Pattern                                               Controller#Action
  root GET      /                                                         front/top#home
money_transfer GET      /money_transfer(.:format)                                 front/top#money_transfer
create_transaction POST     /create_transaction(.:format)                             front/top#create_transaction
api_v1_apartments GET      /api/v1/apartments(.:format)                              api/v1/apartments#index
       POST     /api/v1/apartments(.:format)                              api/v1/apartments#create
new_api_v1_apartment GET      /api/v1/apartments/new(.:format)                          api/v1/apartments#new
edit_api_v1_apartment GET      /api/v1/apartments/:id/edit(.:format)                     api/v1/apartments#edit
api_v1_apartment GET      /api/v1/apartments/:id(.:format)                          api/v1/apartments#show
       PATCH    /api/v1/apartments/:id(.:format)                          api/v1/apartments#update
       PUT      /api/v1/apartments/:id(.:format)                          api/v1/apartments#update
       DELETE   /api/v1/apartments/:id(.:format)                          api/v1/apartments#destroy
users_omniauth_callbacks_github GET      /users/omniauth_callbacks/github(.:format)                users/omniauth_callbacks#github
users_omniauth_callbacks_facebook GET      /users/omniauth_callbacks/facebook(.:format)              users/omniauth_callbacks#facebook
users_omniauth_callbacks_twitter GET      /users/omniauth_callbacks/twitter(.:format)               users/omniauth_callbacks#twitter
users_omniauth_callbacks_instagram GET      /users/omniauth_callbacks/instagram(.:format)             users/omniauth_callbacks#instagram
users_omniauth_callbacks_flickr GET      /users/omniauth_callbacks/flickr(.:format)                users/omniauth_callbacks#flickr
users_omniauth_callbacks_foursquare GET      /users/omniauth_callbacks/foursquare(.:format)            users/omniauth_callbacks#foursquare
sitemap GET      /sitemap(.:format)                                        redirect(301, https://s3-ap-southeast-1.amazonaws.com/suneikii-sitemap-dev/sitemaps/sitemap.xml.gz)
new_user_session GET      /users/sign_in(.:format)                                  app/sessions#new
user_session POST     /users/sign_in(.:format)                                  app/sessions#create
destroy_user_session DELETE   /users/sign_out(.:format)                                 app/sessions#destroy
user_twitter_omniauth_authorize GET|POST /users/auth/twitter(.:format)                             app/omniauth_callbacks#passthru
user_twitter_omniauth_callback GET|POST /users/auth/twitter/callback(.:format)                    app/omniauth_callbacks#twitter
user_facebook_omniauth_authorize GET|POST /users/auth/facebook(.:format)                            app/omniauth_callbacks#passthru
user_facebook_omniauth_callback GET|POST /users/auth/facebook/callback(.:format)                   app/omniauth_callbacks#facebook
user_flickr_omniauth_authorize GET|POST /users/auth/flickr(.:format)                              app/omniauth_callbacks#passthru
user_flickr_omniauth_callback GET|POST /users/auth/flickr/callback(.:format)                     app/omniauth_callbacks#flickr
user_foursquare_omniauth_authorize GET|POST /users/auth/foursquare(.:format)                          app/omniauth_callbacks#passthru
user_foursquare_omniauth_callback GET|POST /users/auth/foursquare/callback(.:format)                 app/omniauth_callbacks#foursquare
user_github_omniauth_authorize GET|POST /users/auth/github(.:format)                              app/omniauth_callbacks#passthru
user_github_omniauth_callback GET|POST /users/auth/github/callback(.:format)                     app/omniauth_callbacks#github
user_instagram_omniauth_authorize GET|POST /users/auth/instagram(.:format)                           app/omniauth_callbacks#passthru
user_instagram_omniauth_callback GET|POST /users/auth/instagram/callback(.:format)                  app/omniauth_callbacks#instagram
new_user_password GET      /users/password/new(.:format)                             app/passwords#new
edit_user_password GET      /users/password/edit(.:format)                            app/passwords#edit
user_password PATCH    /users/password(.:format)                                 app/passwords#update
       PUT      /users/password(.:format)                                 app/passwords#update
       POST     /users/password(.:format)                                 app/passwords#create
cancel_user_registration GET      /users/cancel(.:format)                                   app/registrations#cancel
new_user_registration GET      /users/sign_up(.:format)                                  app/registrations#new
edit_user_registration GET      /users/edit(.:format)                                     app/registrations#edit
user_registration PATCH    /users(.:format)                                          app/registrations#update
       PUT      /users(.:format)                                          app/registrations#update
       DELETE   /users(.:format)                                          app/registrations#destroy
       POST     /users(.:format)                                          app/registrations#create
new_user_confirmation GET      /users/confirmation/new(.:format)                         app/confirmations#new
user_confirmation GET      /users/confirmation(.:format)                             app/confirmations#show
       POST     /users/confirmation(.:format)                             app/confirmations#create
eliminate GET      /eliminate(.:format)                                      app/sessions#destroy
user_input GET      /user/input(.:format)                                     app/omniauth_callbacks#input
user_complete POST     /user/complete(.:format)                                  app/omniauth_callbacks#complete
add_cart_product GET      (/:locale)/products/:id/add_cart(.:format)                front/products#add_cart {:locale=>/ja|en|th/}
cart_products GET      (/:locale)/products/cart(.:format)                        front/products#cart {:locale=>/ja|en|th/}
kill_products GET      (/:locale)/products/kill(.:format)                        front/products#kill {:locale=>/ja|en|th/}
products GET      (/:locale)/products(.:format)                             front/products#index {:locale=>/ja|en|th/}
product GET      (/:locale)/products/:id(.:format)                         front/products#show {:locale=>/ja|en|th/}
user_profile GET      (/:locale)/user/profile(.:format)                         front/users#profile {:locale=>/ja|en|th/}
user_name GET      (/:locale)/user/name(.:format)                            front/users#name {:locale=>/ja|en|th/}
       PUT      (/:locale)/user/name(.:format)                            front/users#update {:locale=>/ja|en|th/}
user_address GET      (/:locale)/user/address(.:format)                         front/users#address {:locale=>/ja|en|th/}
       PUT      (/:locale)/user/address(.:format)                         front/users#update_profile {:locale=>/ja|en|th/}
user_email GET      (/:locale)/user/email(.:format)                           front/users#email {:locale=>/ja|en|th/}
       PUT      (/:locale)/user/email(.:format)                           front/users#update_profile {:locale=>/ja|en|th/}
       GET      (/:locale)/user/profile(.:format)                         front/users#profile {:locale=>/ja|en|th/}
user_edit GET      (/:locale)/user/edit(.:format)                            front/users#edit {:locale=>/ja|en|th/}
user_clear_session GET      (/:locale)/user/clear_session(.:format)                   front/users#clear_session {:locale=>/ja|en|th/}
user_logout GET      (/:locale)/user/logout(.:format)                          front/sessions#logout {:locale=>/ja|en|th/}
user_visited GET      (/:locale)/user/visited(.:format)                         front/sessions#visited {:locale=>/ja|en|th/}
like_favorites POST     (/:locale)/favorites/like(.:format)                       front/favorites#like {:locale=>/ja|en|th/}
favorites GET      (/:locale)/favorites(.:format)                            front/favorites#index {:locale=>/ja|en|th/}
favorite GET      (/:locale)/favorites/:id(.:format)                        front/favorites#show {:locale=>/ja|en|th/}
site_inquiry GET      (/:locale)/site_inquiry(.:format)                         front/site_inquiry#index {:locale=>/ja|en|th/}
site_inquiry_confirm POST     (/:locale)/site_inquiry/confirm(.:format)                 front/site_inquiry#confirm {:locale=>/ja|en|th/}
site_inquiry_thanks POST     (/:locale)/site_inquiry/thanks(.:format)                  front/site_inquiry#thanks {:locale=>/ja|en|th/}
 admin GET      (/:locale)/admin(.:format)                                admin/members/users#index {:locale=>/ja|en|th/}
admin_use_terms GET      (/:locale)/admin/use_terms(.:format)                      admin/settings/use_terms#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/use_terms(.:format)                      admin/settings/use_terms#create {:locale=>/ja|en|th/}
new_admin_use_term GET      (/:locale)/admin/use_terms/new(.:format)                  admin/settings/use_terms#new {:locale=>/ja|en|th/}
edit_admin_use_term GET      (/:locale)/admin/use_terms/:id/edit(.:format)             admin/settings/use_terms#edit {:locale=>/ja|en|th/}
admin_use_term GET      (/:locale)/admin/use_terms/:id(.:format)                  admin/settings/use_terms#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/use_terms/:id(.:format)                  admin/settings/use_terms#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/use_terms/:id(.:format)                  admin/settings/use_terms#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/use_terms/:id(.:format)                  admin/settings/use_terms#destroy {:locale=>/ja|en|th/}
admin_colors GET      (/:locale)/admin/colors(.:format)                         admin/products/colors#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/colors(.:format)                         admin/products/colors#create {:locale=>/ja|en|th/}
new_admin_color GET      (/:locale)/admin/colors/new(.:format)                     admin/products/colors#new {:locale=>/ja|en|th/}
edit_admin_color GET      (/:locale)/admin/colors/:id/edit(.:format)                admin/products/colors#edit {:locale=>/ja|en|th/}
admin_color GET      (/:locale)/admin/colors/:id(.:format)                     admin/products/colors#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/colors/:id(.:format)                     admin/products/colors#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/colors/:id(.:format)                     admin/products/colors#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/colors/:id(.:format)                     admin/products/colors#destroy {:locale=>/ja|en|th/}
admin_goods_categories GET      (/:locale)/admin/goods_categories(.:format)               admin/products/goods_categories#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/goods_categories(.:format)               admin/products/goods_categories#create {:locale=>/ja|en|th/}
new_admin_goods_category GET      (/:locale)/admin/goods_categories/new(.:format)           admin/products/goods_categories#new {:locale=>/ja|en|th/}
edit_admin_goods_category GET      (/:locale)/admin/goods_categories/:id/edit(.:format)      admin/products/goods_categories#edit {:locale=>/ja|en|th/}
admin_goods_category GET      (/:locale)/admin/goods_categories/:id(.:format)           admin/products/goods_categories#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/goods_categories/:id(.:format)           admin/products/goods_categories#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/goods_categories/:id(.:format)           admin/products/goods_categories#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/goods_categories/:id(.:format)           admin/products/goods_categories#destroy {:locale=>/ja|en|th/}
admin_goods GET      (/:locale)/admin/goods(.:format)                          admin/products/goods#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/goods(.:format)                          admin/products/goods#create {:locale=>/ja|en|th/}
new_admin_good GET      (/:locale)/admin/goods/new(.:format)                      admin/products/goods#new {:locale=>/ja|en|th/}
edit_admin_good GET      (/:locale)/admin/goods/:id/edit(.:format)                 admin/products/goods#edit {:locale=>/ja|en|th/}
admin_good GET      (/:locale)/admin/goods/:id(.:format)                      admin/products/goods#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/goods/:id(.:format)                      admin/products/goods#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/goods/:id(.:format)                      admin/products/goods#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/goods/:id(.:format)                      admin/products/goods#destroy {:locale=>/ja|en|th/}
admin_ingredients GET      (/:locale)/admin/ingredients(.:format)                    admin/products/ingredients#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/ingredients(.:format)                    admin/products/ingredients#create {:locale=>/ja|en|th/}
new_admin_ingredient GET      (/:locale)/admin/ingredients/new(.:format)                admin/products/ingredients#new {:locale=>/ja|en|th/}
edit_admin_ingredient GET      (/:locale)/admin/ingredients/:id/edit(.:format)           admin/products/ingredients#edit {:locale=>/ja|en|th/}
admin_ingredient GET      (/:locale)/admin/ingredients/:id(.:format)                admin/products/ingredients#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/ingredients/:id(.:format)                admin/products/ingredients#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/ingredients/:id(.:format)                admin/products/ingredients#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/ingredients/:id(.:format)                admin/products/ingredients#destroy {:locale=>/ja|en|th/}
admin_sizes GET      (/:locale)/admin/sizes(.:format)                          admin/products/sizes#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/sizes(.:format)                          admin/products/sizes#create {:locale=>/ja|en|th/}
new_admin_size GET      (/:locale)/admin/sizes/new(.:format)                      admin/products/sizes#new {:locale=>/ja|en|th/}
edit_admin_size GET      (/:locale)/admin/sizes/:id/edit(.:format)                 admin/products/sizes#edit {:locale=>/ja|en|th/}
admin_size GET      (/:locale)/admin/sizes/:id(.:format)                      admin/products/sizes#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/sizes/:id(.:format)                      admin/products/sizes#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/sizes/:id(.:format)                      admin/products/sizes#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/sizes/:id(.:format)                      admin/products/sizes#destroy {:locale=>/ja|en|th/}
toggle_ban_admin_user GET      (/:locale)/admin/users/:id/toggle_ban(.:format)           admin/members/users#toggle_ban {:locale=>/ja|en|th/}
condition_admin_users GET      (/:locale)/admin/users/condition(.:format)                admin/members/users#condition {:locale=>/ja|en|th/}
admin_users GET      (/:locale)/admin/users(.:format)                          admin/members/users#index {:locale=>/ja|en|th/}
admin_user GET      (/:locale)/admin/users/:id(.:format)                      admin/members/users#show {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/users/:id(.:format)                      admin/members/users#destroy {:locale=>/ja|en|th/}
admin_shoppers GET      (/:locale)/admin/shoppers(.:format)                       admin/tenants/shoppers#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/shoppers(.:format)                       admin/tenants/shoppers#create {:locale=>/ja|en|th/}
new_admin_shopper GET      (/:locale)/admin/shoppers/new(.:format)                   admin/tenants/shoppers#new {:locale=>/ja|en|th/}
edit_admin_shopper GET      (/:locale)/admin/shoppers/:id/edit(.:format)              admin/tenants/shoppers#edit {:locale=>/ja|en|th/}
admin_shopper GET      (/:locale)/admin/shoppers/:id(.:format)                   admin/tenants/shoppers#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/shoppers/:id(.:format)                   admin/tenants/shoppers#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/shoppers/:id(.:format)                   admin/tenants/shoppers#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/shoppers/:id(.:format)                   admin/tenants/shoppers#destroy {:locale=>/ja|en|th/}
admin_shop_statuses GET      (/:locale)/admin/shop_statuses(.:format)                  admin/tenants/shop_statuses#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/shop_statuses(.:format)                  admin/tenants/shop_statuses#create {:locale=>/ja|en|th/}
new_admin_shop_status GET      (/:locale)/admin/shop_statuses/new(.:format)              admin/tenants/shop_statuses#new {:locale=>/ja|en|th/}
edit_admin_shop_status GET      (/:locale)/admin/shop_statuses/:id/edit(.:format)         admin/tenants/shop_statuses#edit {:locale=>/ja|en|th/}
admin_shop_status GET      (/:locale)/admin/shop_statuses/:id(.:format)              admin/tenants/shop_statuses#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/shop_statuses/:id(.:format)              admin/tenants/shop_statuses#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/shop_statuses/:id(.:format)              admin/tenants/shop_statuses#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/shop_statuses/:id(.:format)              admin/tenants/shop_statuses#destroy {:locale=>/ja|en|th/}
admin_distributors GET      (/:locale)/admin/distributors(.:format)                   admin/tenants/distributors#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/distributors(.:format)                   admin/tenants/distributors#create {:locale=>/ja|en|th/}
new_admin_distributor GET      (/:locale)/admin/distributors/new(.:format)               admin/tenants/distributors#new {:locale=>/ja|en|th/}
edit_admin_distributor GET      (/:locale)/admin/distributors/:id/edit(.:format)          admin/tenants/distributors#edit {:locale=>/ja|en|th/}
admin_distributor GET      (/:locale)/admin/distributors/:id(.:format)               admin/tenants/distributors#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/distributors/:id(.:format)               admin/tenants/distributors#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/distributors/:id(.:format)               admin/tenants/distributors#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/distributors/:id(.:format)               admin/tenants/distributors#destroy {:locale=>/ja|en|th/}
admin_shoppers_distributors GET      (/:locale)/admin/shoppers_distributors(.:format)          admin/tenants/shoppers_distributors#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/shoppers_distributors(.:format)          admin/tenants/shoppers_distributors#create {:locale=>/ja|en|th/}
new_admin_shoppers_distributor GET      (/:locale)/admin/shoppers_distributors/new(.:format)      admin/tenants/shoppers_distributors#new {:locale=>/ja|en|th/}
edit_admin_shoppers_distributor GET      (/:locale)/admin/shoppers_distributors/:id/edit(.:format) admin/tenants/shoppers_distributors#edit {:locale=>/ja|en|th/}
admin_shoppers_distributor GET      (/:locale)/admin/shoppers_distributors/:id(.:format)      admin/tenants/shoppers_distributors#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/shoppers_distributors/:id(.:format)      admin/tenants/shoppers_distributors#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/shoppers_distributors/:id(.:format)      admin/tenants/shoppers_distributors#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/shoppers_distributors/:id(.:format)      admin/tenants/shoppers_distributors#destroy {:locale=>/ja|en|th/}
pay_admin_order GET      (/:locale)/admin/orders/:id/pay(.:format)                 admin/dealings/orders#pay {:locale=>/ja|en|th/}
refund_admin_order GET      (/:locale)/admin/orders/:id/refund(.:format)              admin/dealings/orders#refund {:locale=>/ja|en|th/}
post_admin_order POST     (/:locale)/admin/orders/:id/post(.:format)                admin/dealings/timeline_messages#post {:locale=>/ja|en|th/}
admin_orders GET      (/:locale)/admin/orders(.:format)                         admin/dealings/orders#index {:locale=>/ja|en|th/}
       POST     (/:locale)/admin/orders(.:format)                         admin/dealings/orders#create {:locale=>/ja|en|th/}
new_admin_order GET      (/:locale)/admin/orders/new(.:format)                     admin/dealings/orders#new {:locale=>/ja|en|th/}
edit_admin_order GET      (/:locale)/admin/orders/:id/edit(.:format)                admin/dealings/orders#edit {:locale=>/ja|en|th/}
admin_order GET      (/:locale)/admin/orders/:id(.:format)                     admin/dealings/orders#show {:locale=>/ja|en|th/}
       PATCH    (/:locale)/admin/orders/:id(.:format)                     admin/dealings/orders#update {:locale=>/ja|en|th/}
       PUT      (/:locale)/admin/orders/:id(.:format)                     admin/dealings/orders#update {:locale=>/ja|en|th/}
       DELETE   (/:locale)/admin/orders/:id(.:format)                     admin/dealings/orders#destroy {:locale=>/ja|en|th/}
       GET      (/:locale)/*path(.:format)                                application#render_404 {:locale=>/ja|en|th/}
```
