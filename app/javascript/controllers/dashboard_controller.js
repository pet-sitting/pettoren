import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'pets', 'bookings', 'requests' ];
  connect() {
    console.log(this.petsTarget);
    console.log(this.bookingsTarget);
    console.log(this.requestsTarget);
  }

  showpets() {
    this.petsTarget.classList.remove('hidebox');
    this.bookingsTarget.classList.add('hidebox');
    this.requestsTarget.classList.add('hidebox');
  }

  showbookings() {
    this.bookingsTarget.classList.remove('hidebox');
    this.petsTarget.classList.add('hidebox');
    this.requestsTarget.classList.add('hidebox');
    console.log('bookings');
    console.log(this.bookingsTarget.classList);
  }

  showrequests() {
    this.requestsTarget.classList.remove('hidebox');
    this.bookingsTarget.classList.add('hidebox');
    this.petsTarget.classList.add('hidebox');
  }
}
