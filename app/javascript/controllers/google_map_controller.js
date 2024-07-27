import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["display"]

  connect() {
    if (this.googleMapsLoaded) {
      this.map;
      this.marker;
    } else {
      console.error('Google Maps Script not loaded!')
    }
  }

  get marker() {
    return new google.maps.Marker(
      {
        map: this.map,
        position: this.position
      }
    );
  }

  get position() {
    return new google.maps.LatLng(this.latitude, this.longitude);
  }

  get map() {
    return new google.maps.Map(this.displayTarget, {
      zoom: this.zoom,
      center: this.position,
      disableDefaultUI: true,
      draggable: false,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
  }

  get zoom() {
    return 10;
  }

  get longitude() {
    return parseFloat(this.element.dataset.longitude);
  }

  get latitude() {
    return parseFloat(this.element.dataset.latitude);
  }

  get googleMapsLoaded() {
    return typeof google === 'object' && typeof google.maps === 'object';
  }
}
