import * as ActiveStorage from '@rails/activestorage';
import { Turbo } from "@hotwired/turbo-rails"

import "./controllers"

// For Turbo Native
window.Turbo = Turbo

// Start ActiveStorage
ActiveStorage.start()
