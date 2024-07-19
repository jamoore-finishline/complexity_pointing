// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'nested_fields';
import 'pass_all';
import 'dismiss_notice';
import Rails from "@rails/ujs";
Rails.start();
import "./channels"
