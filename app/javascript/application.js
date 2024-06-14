// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Rails from "@rails/ujs"
import 'flowbite'
import 'flowbite/dist/datepicker.turbo.js'
import "./controllers"
// disable Turbo by default and enable it selectively only in places where we’ll use Turbo Frames or Streams
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

Rails.start()
