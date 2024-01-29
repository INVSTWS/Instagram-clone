import { Controller } from "@hotwired/stimulus";
import Cropper from 'cropperjs';

// Connects to data-controller="new-post-form"
export default class extends Controller {
  static targets = ["photoFile", "selectFileButton"];
  connect() {
    // this.photoFileTarget.addEventListener('change', () => {
    //   this.element.submit();
    // })
  }

  selectFile(e) {
    e.preventDefault();
    this.photoFileTarget.click();
  }

  submitForm(){
    this.element.submit();
  }
  
}
