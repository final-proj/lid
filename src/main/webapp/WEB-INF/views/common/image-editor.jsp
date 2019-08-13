<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<style>
*:focus {
    outline: none;
}
</style>
<!-- Content -->
<div class="container">
	<div class="row">
		<div class="col-md-9" style="width: 518.4px">
			<!-- <h3>Demo:</h3> -->
			<div style= "margin :7px 7px 7px 7px; float:left;">
				<div class="input-group">
                    <div class="input-group-btn">
                        <button class="btn btn-info">
                            <i class="fa fa-map-marker"></i> 위치
                        </button>
                    </div>
                    <input type="text" id="input1-group2" name="input1-group2" placeholder="위치를 설정하세요." class="form-control">
                </div>
			</div>
			<div class="img-container" style="margin-top:45px;">
				<img id="image"
					src="${path}/resources/images/imageEditor/imageRegister.png"
					alt="Picture"> <img id="image"
					src="${path}/resources/images/imageEditor/imageRegister.png"
					alt="Picture"> <img id="image"
					src="${path}/resources/images/imageEditor/imageRegister.png"
					alt="Picture"> <img id="image"
					src="${path}/resources/images/imageEditor/imageRegister.png"
					alt="Picture"> <img id="image"
					src="${path}/resources/images/imageEditor/imageRegister.png"
					alt="Picture">
			</div>

		</div>
		<!-- <h3>Preview:</h3> -->
		<div class="docs-preview clearfix" style="margin-top:45px;">
			<div class="img-preview preview0 preview-md" id="preImage1"
				style="width: 82.5px; height: 90px; border-radius: 10px;"></div>
			<div class="img-preview preview1 preview-md" id="preImage2"
				style="width: 82.5px; height: 90px; border-radius: 10px;"></div>
			<div class="img-preview preview2 preview-md" id="preImage3"
				style="width: 82.5px; height: 90px; border-radius: 10px;"></div>
			<div class="img-preview preview3 preview-md" id="preImage4"
				style="width: 82.5px; height: 90px; border-radius: 10px;"></div>
			<div class="img-preview preview4 preview-md" id="preImage5"
				style="width: 82.5px; height: 90px; border-radius: 10px;"></div>
		</div>

		<!-- <h3>Data:</h3> -->
        <div class="docs-data" style="display: none;">
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataX">X</label>
            </span>
            <input type="text" class="form-control" id="dataX" placeholder="x">
            <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataY">Y</label>
            </span>
            <input type="text" class="form-control" id="dataY" placeholder="y">
            <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataWidth">Width</label>
            </span>
            <input type="text" class="form-control" id="dataWidth" placeholder="width">
            <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataHeight">Height</label>
            </span>
            <input type="text" class="form-control" id="dataHeight" placeholder="height">
            <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataRotate">Rotate</label>
            </span>
            <input type="text" class="form-control" id="dataRotate" placeholder="rotate">
            <span class="input-group-append">
              <span class="input-group-text">deg</span>
            </span>
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataScaleX">ScaleX</label>
            </span>
            <input type="text" class="form-control" id="dataScaleX" placeholder="scaleX">
          </div>
          <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataScaleY">ScaleY</label>
            </span>
            <input type="text" class="form-control" id="dataScaleY" placeholder="scaleY">
          </div>
        </div>
      </div>
    </div>
    <div class="row" id="actions">
      <div class="col-md-9 docs-buttons" style="width:100%;">
        <!-- <h3>Toolbar:</h3> -->
        <div class="btn-group">
            <button style="display:none;" type="button" class="btn btn-info" data-method="zoom" data-option="0.1" title="Zoom In">
                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(0.3)">
                  <span class="fa fa-search-plus"></span>
                </span>
              </button>

          <button style="display:none;"  type="button" class="btn btn-info" data-method="setDragMode" data-option="move" title="Move">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;move&quot;)">
              <span class="fa fa-arrows-alt"></span>
            </span>
          </button>
          <button style="display:none;" type="button" class="btn btn-info" data-method="setDragMode" data-option="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;crop&quot;)">
              <span class="fa fa-crop-alt"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-info" data-method="zoom" data-option="0.1" title="Zoom In">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(0.1)">
              <span class="fa fa-search-plus"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="zoom" data-option="-0.1" title="Zoom Out">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(-0.1)">
              <span class="fa fa-search-minus"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-info" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(-10, 0)">
              <span class="fa fa-arrow-left"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="move" data-option="10" data-second-option="0" title="Move Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(10, 0)">
              <span class="fa fa-arrow-right"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, -10)">
              <span class="fa fa-arrow-up"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="move" data-option="0" data-second-option="10" title="Move Down">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, 10)">
              <span class="fa fa-arrow-down"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-info" data-method="rotate" data-option="-45" title="Rotate Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(-90)">
              <span class="fa fa-undo-alt"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="rotate" data-option="45" title="Rotate Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(90)">
              <span class="fa fa-redo-alt"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-info" data-method="scaleX" data-option="-1" title="Flip Horizontal">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleX(-1)">
              <span class="fa fa-arrows-alt-h"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="scaleY" data-option="-1" title="Flip Vertical">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleY(-1)">
              <span class="fa fa-arrows-alt-v"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button style="display:none;" type="button" class="btn btn-info" data-method="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="편집영역 생성">
              <span class="fa fa-check"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
           <button type="button" class="btn btn-info" data-method="clear" title="Clear">
            <span class="docs-tooltip" data-toggle="tooltip" title="편집영역 제거">
              <span class="fa fa-times"></span>
            </span>
          </button>
          <button type="button" class="btn btn-info" data-method="reset" title="Reset">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.reset()">
              <span class="fa fa-sync-alt"></span>
            </span>
          </button>
          <label class="btn btn-info btn-upload" for="inputImage" title="Upload image file">
            <input type="file" class="sr-only" id="inputImage" name="file" accept="image/*">
            <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs">
              <span class="fa fa-upload"></span>
            </span>
          </label>
          <button style="display:none;" type="button" class="btn btn-info" data-method="destroy" title="Destroy">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.destroy()">
              <span class="fa fa-power-off"></span>
            </span>
          </button>
        </div>

        <div class="btn-group btn-group-crop">
          <button type="button" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ maxWidth: 4096, maxHeight: 4096 })">
              Get Cropped Canvas
            </span>
          </button>
          <button style="display:none;" type="button" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 160, &quot;height&quot;: 90 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ width: 160, height: 90 })">
              160&times;90
            </span>
          </button>
          <button style="display:none;" type="button" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 320, &quot;height&quot;: 180 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ width: 320, height: 180 })">
              320&times;180
            </span>
          </button>
        </div>

        <!-- Show the cropped image in modal -->
        <div class="modal fade docs-cropped" id="getCroppedCanvasModal" role="dialog" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="getCroppedCanvasTitle">Cropped</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a class="btn btn-info" id="download" href="javascript:void(0);" download="cropped.jpg">Download</a>
              </div>
            </div>
          </div>
        </div><!-- /.modal -->

        <button style="display:none;" type="button" class="btn btn-secondary" data-method="getData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getData()">
            Get Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="setData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setData(data)">
            Set Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="getContainerData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getContainerData()">
            Get Container Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="getImageData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getImageData()">
            Get Image Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="getCanvasData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCanvasData()">
            Get Canvas Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="setCanvasData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setCanvasData(data)">
            Set Canvas Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="getCropBoxData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCropBoxData()">
            Get Crop Box Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="setCropBoxData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setCropBoxData(data)">
            Set Crop Box Data
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="moveTo" data-option="0">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.moveTo(0)">
            Move to [0,0]
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="zoomTo" data-option="1">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoomTo(1)">
            Zoom to 100%
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="rotateTo" data-option="180">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotateTo(180)">
            Rotate 180°
          </span>
        </button>
        <button style="display:none;" type="button" class="btn btn-secondary" data-method="scale" data-option="-2" data-second-option="-1">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scale(-2, -1)">
            Scale (-2, -1)
          </span>
        </button>
        <!-- <textarea class="form-control" id="feedContent" name="bContent" placeholder="내용을 입력해주세요."></textarea>
         -->
         <div class="card-body" contenteditable="true" id="editorDiv" name="bContent" style="overflow:auto; white-space: pre-line; height:200px; border: 1.5px solid #f85a70; border-radius:10px; "  >
         </div>
         <input type=hidden id="caretposition" value="0">
      
      </div><!-- /.docs-buttons -->

       <div class="col-md-3 docs-toggles" style="display:none;">
        <!-- <h3>Toggles:</h3> -->
        <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
          <label class="btn btn-info active">
            <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.7777777777777777">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 16 / 9">
              16:9
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1.3333333333333333">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 4 / 3">
              4:3
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="aspectRatio3" name="aspectRatio" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 1 / 1">
              1:1
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="0.6666666666666666">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 2 / 3">
              2:3
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="aspectRatio5" name="aspectRatio" value="NaN">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: NaN">
              Free
            </span>
          </label>
        </div>

        <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
          <label class="btn btn-info active">
            <input type="radio" class="sr-only" id="viewMode0" name="viewMode" value="0" checked>
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 0">
              VM0
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="viewMode1" name="viewMode" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 1">
              VM1
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="viewMode2" name="viewMode" value="2">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 2">
              VM2
            </span>
          </label>
          <label class="btn btn-info">
            <input type="radio" class="sr-only" id="viewMode3" name="viewMode" value="3">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 3">
              VM3
            </span>
          </label>
        </div>

        <div class="dropdown dropup docs-options">
          <button type="button" class="btn btn-info btn-block dropdown-toggle" id="toggleOptions" data-toggle="dropdown" aria-expanded="true">
            Toggle Options
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" role="menu" aria-labelledby="toggleOptions">
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="responsive" type="checkbox" name="responsive" checked>
                <label class="form-check-label" for="responsive">responsive</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="restore" type="checkbox" name="restore" checked>
                <label class="form-check-label" for="restore">restore</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="checkCrossOrigin" type="checkbox" name="checkCrossOrigin" checked>
                <label class="form-check-label" for="checkCrossOrigin">checkCrossOrigin</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="checkOrientation" type="checkbox" name="checkOrientation" checked>
                <label class="form-check-label" for="checkOrientation">checkOrientation</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="modal" type="checkbox" name="modal" checked>
                <label class="form-check-label" for="modal">modal</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="guides" type="checkbox" name="guides" checked>
                <label class="form-check-label" for="guides">guides</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="center" type="checkbox" name="center" checked>
                <label class="form-check-label" for="center">center</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="highlight" type="checkbox" name="highlight" checked>
                <label class="form-check-label" for="highlight">highlight</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="background" type="checkbox" name="background" checked>
                <label class="form-check-label" for="background">background</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="autoCrop" type="checkbox" name="autoCrop" checked>
                <label class="form-check-label" for="autoCrop">autoCrop</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="movable" type="checkbox" name="movable" checked>
                <label class="form-check-label" for="movable">movable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="rotatable" type="checkbox" name="rotatable" checked>
                <label class="form-check-label" for="rotatable">rotatable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="scalable" type="checkbox" name="scalable" checked>
                <label class="form-check-label" for="scalable">scalable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="zoomable" type="checkbox" name="zoomable" checked>
                <label class="form-check-label" for="zoomable">zoomable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="zoomOnTouch" type="checkbox" name="zoomOnTouch" checked>
                <label class="form-check-label" for="zoomOnTouch">zoomOnTouch</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="zoomOnWheel" type="checkbox" name="zoomOnWheel" checked>
                <label class="form-check-label" for="zoomOnWheel">zoomOnWheel</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="cropBoxMovable" type="checkbox" name="cropBoxMovable" checked>
                <label class="form-check-label" for="cropBoxMovable">cropBoxMovable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="cropBoxResizable" type="checkbox" name="cropBoxResizable" checked>
                <label class="form-check-label" for="cropBoxResizable">cropBoxResizable</label>
              </div>
            </li>
            <li class="dropdown-item">
              <div class="form-check">
                <input class="form-check-input" id="toggleDragModeOnDblclick" type="checkbox" name="toggleDragModeOnDblclick" checked>
                <label class="form-check-label" for="toggleDragModeOnDblclick">toggleDragModeOnDblclick</label>
              </div>
            </li>
          </ul>
        </div><!-- /.dropdown -->

        <a class="btn btn-success btn-block" data-toggle="tooltip" href="https://fengyuanchen.github.io/photo-editor" title="An advanced example of Cropper.js">Photo Editor</a>

      </div><!-- /.docs-toggles -->
    </div>

    