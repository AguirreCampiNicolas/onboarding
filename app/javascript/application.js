// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import 'flowbite'
import 'flowbite/dist/datepicker.turbo.js'
import "./controllers"
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false

