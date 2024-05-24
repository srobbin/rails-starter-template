// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

// App controllers
import appControllers from '../controllers/**/*_controller.js';
appControllers.forEach((controller) => {
  const name = controller.name.replace("..--controllers--", "");
  application.register(name, controller.module.default)
})

// ViewComponents controllers
import componentControllers from "../../components/**/*_controller.js"
componentControllers.forEach((controller) => {
  const name = controller.name.replace("..--..--components--", "");
  application.register(name, controller.module.default)
})