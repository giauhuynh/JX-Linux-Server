/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	config.language = 'vi';
	config.skin = 'moono-lisa';
	
	config.filebrowserBrowseUrl = 'lib/ckfinder/ckfinder_call.php';
	config.filebrowserImageBrowseUrl = 'lib/ckfinder/ckfinder_call.php?type=Images';
	config.filebrowserFlashBrowseUrl = 'lib/ckfinder/ckfinder_call.php?type=Flash';
	config.filebrowserUploadUrl = 'lib/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl = 'lib/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl = 'lib/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};
