import { Controller } from "@hotwired/stimulus"
import Cropper from 'cropperjs';

// Connects to data-controller="photo-cropper"
export default class extends Controller {
  static targets = ["image", "form", "xOffset", "yOffset", "height", "width"]
  connect() {


    console.log(this.imageTarget);
    console.log(this.formTarget);
    // console.log("Cropper:", Cropper)

    // console.log("PHOTO CROPPER")

    const controller = this;
    const cropper = new Cropper(this.imageTarget, {
      aspectRatio: 3 / 4,
      crop(event) {
        console.log(event.detail.x);
        console.log(event.detail.y);
        console.log(event.detail.width);
        console.log(event.detail.height);
        console.log(event.detail.rotate);
        console.log(event.detail.scaleX);
        console.log(event.detail.scaleY);


        controller.xOffsetTarget.value = event.detail.x;
        controller.yOffsetTarget.value = event.detail.y;
        controller.widthTarget.value = event.detail.width;
        controller.heightTarget.value = event.detail.height;
        

      },
    });
  }
}
