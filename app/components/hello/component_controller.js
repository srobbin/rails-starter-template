import { Controller } from '@hotwired/stimulus';

export default class HelloComponentController extends Controller {
  connect() {
    console.log('HelloComponentController connected');
  }
}
