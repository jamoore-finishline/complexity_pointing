# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* Routes as of July 24, 2024
*                                             Prefix Verb   URI Pattern                                                                                       Controller#Action
                                  new_user_session GET    /users/sign_in(.:format)                                                                          devise/sessions#new
                                      user_session POST   /users/sign_in(.:format)                                                                          devise/sessions#create
                              destroy_user_session GET    /users/sign_out(.:format)                                                                         devise/sessions#destroy
                                 new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
                                edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
                                     user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
                                                   PUT    /users/password(.:format)                                                                         devise/passwords#update
                                                   POST   /users/password(.:format)                                                                         devise/passwords#create
                          cancel_user_registration GET    /users/cancel(.:format)                                                                           devise/registrations#cancel
                             new_user_registration GET    /users/sign_up(.:format)                                                                          devise/registrations#new
                            edit_user_registration GET    /users/edit(.:format)                                                                             devise/registrations#edit
                                 user_registration PATCH  /users(.:format)                                                                                  devise/registrations#update
                                                   PUT    /users(.:format)                                                                                  devise/registrations#update
                                                   DELETE /users(.:format)                                                                                  devise/registrations#destroy
                                                   POST   /users(.:format)                                                                                  devise/registrations#create
                                             roles GET    /roles(.:format)                                                                                  roles#index
                                                   POST   /roles(.:format)                                                                                  roles#create
                                          new_role GET    /roles/new(.:format)                                                                              roles#new
                                         edit_role GET    /roles/:id/edit(.:format)                                                                         roles#edit
                                              role GET    /roles/:id(.:format)                                                                              roles#show
                                                   PATCH  /roles/:id(.:format)                                                                              roles#update
                                                   PUT    /roles/:id(.:format)                                                                              roles#update
                                                   DELETE /roles/:id(.:format)                                                                              roles#destroy
               pointing_session_backlog_item_votes POST   /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/votes(.:format)            votes#create
                pointing_session_backlog_item_vote PATCH  /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/votes/:id(.:format)        votes#update
                                                   PUT    /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/votes/:id(.:format)        votes#update
                                                   DELETE /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/votes/:id(.:format)        votes#destroy
            pointing_session_backlog_item_comments POST   /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/comments(.:format)         comments#create
             pointing_session_backlog_item_comment PATCH  /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/comments/:id(.:format)     comments#update
                                                   PUT    /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/comments/:id(.:format)     comments#update
                                                   DELETE /pointing_sessions/:pointing_session_id/backlog_items/:backlog_item_id/comments/:id(.:format)     comments#destroy
                    pointing_session_backlog_items GET    /pointing_sessions/:pointing_session_id/backlog_items(.:format)                                   backlog_items#index
                     pointing_session_backlog_item GET    /pointing_sessions/:pointing_session_id/backlog_items/:id(.:format)                               backlog_items#show
                                 pointing_sessions GET    /pointing_sessions(.:format)                                                                      pointing_sessions#index
                             edit_pointing_session GET    /pointing_sessions/:id/edit(.:format)                                                             pointing_sessions#edit
                                  pointing_session GET    /pointing_sessions/:id(.:format)                                                                  pointing_sessions#show
                                                   PATCH  /pointing_sessions/:id(.:format)                                                                  pointing_sessions#update
                                                   PUT    /pointing_sessions/:id(.:format)                                                                  pointing_sessions#update
                                                   DELETE /pointing_sessions/:id(.:format)                                                                  pointing_sessions#destroy
                                   admin_dashboard GET    /admin/dashboard(.:format)                                                                        admin/dashboard#index
                                       admin_users GET    /admin/users(.:format)                                                                            admin/users#index
                                                   POST   /admin/users(.:format)                                                                            admin/users#create
                                    new_admin_user GET    /admin/users/new(.:format)                                                                        admin/users#new
                                   edit_admin_user GET    /admin/users/:id/edit(.:format)                                                                   admin/users#edit
                                        admin_user GET    /admin/users/:id(.:format)                                                                        admin/users#show
                                                   PATCH  /admin/users/:id(.:format)                                                                        admin/users#update
                                                   PUT    /admin/users/:id(.:format)                                                                        admin/users#update
                                                   DELETE /admin/users/:id(.:format)                                                                        admin/users#destroy
toggle_release_admin_pointing_session_backlog_item PATCH  /admin/pointing_sessions/:pointing_session_id/backlog_items/:id/toggle_release(.:format)          admin/backlog_items#toggle_release
              admin_pointing_session_backlog_items GET    /admin/pointing_sessions/:pointing_session_id/backlog_items(.:format)                             admin/backlog_items#index
                                                   POST   /admin/pointing_sessions/:pointing_session_id/backlog_items(.:format)                             admin/backlog_items#create
           new_admin_pointing_session_backlog_item GET    /admin/pointing_sessions/:pointing_session_id/backlog_items/new(.:format)                         admin/backlog_items#new
          edit_admin_pointing_session_backlog_item GET    /admin/pointing_sessions/:pointing_session_id/backlog_items/:id/edit(.:format)                    admin/backlog_items#edit
               admin_pointing_session_backlog_item GET    /admin/pointing_sessions/:pointing_session_id/backlog_items/:id(.:format)                         admin/backlog_items#show
                                                   PATCH  /admin/pointing_sessions/:pointing_session_id/backlog_items/:id(.:format)                         admin/backlog_items#update
                                                   PUT    /admin/pointing_sessions/:pointing_session_id/backlog_items/:id(.:format)                         admin/backlog_items#update
                                                   DELETE /admin/pointing_sessions/:pointing_session_id/backlog_items/:id(.:format)                         admin/backlog_items#destroy
                           admin_pointing_sessions GET    /admin/pointing_sessions(.:format)                                                                admin/pointing_sessions#index
                                                   POST   /admin/pointing_sessions(.:format)                                                                admin/pointing_sessions#create
                        new_admin_pointing_session GET    /admin/pointing_sessions/new(.:format)                                                            admin/pointing_sessions#new
                       edit_admin_pointing_session GET    /admin/pointing_sessions/:id/edit(.:format)                                                       admin/pointing_sessions#edit
                            admin_pointing_session GET    /admin/pointing_sessions/:id(.:format)                                                            admin/pointing_sessions#show
                                                   PATCH  /admin/pointing_sessions/:id(.:format)                                                            admin/pointing_sessions#update
                                                   PUT    /admin/pointing_sessions/:id(.:format)                                                            admin/pointing_sessions#update
                                                   DELETE /admin/pointing_sessions/:id(.:format)                                                            admin/pointing_sessions#destroy
                                   users_dashboard GET    /users/dashboard(.:format)                                                                        users/dashboard#index
                                  users_user_votes GET    /users/votes(.:format)                                                                            users/votes#index
                                              root GET    /                                                                                                 home#index
                  turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
                  turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
                 turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
                     rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
                        rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
                     rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
               rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
                     rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
                      rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
                    rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
                                                   POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
                 new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
                edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
                     rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
                                                   PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                                   PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                                   DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
          new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
             rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
             rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
          rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
                                rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
                          rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
                                                   GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
                         rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
                   rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
                                                   GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
                                rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
                         update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
                              rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
