// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ProductsController from "./products_controller"
application.register("products", ProductsController)

import DropdownController from "./dropdown_controller"
application.register("dropdown", DropdownController)

import NestedFormController from "./nested_form_controller"
application.register("nested-form", NestedFormController)
