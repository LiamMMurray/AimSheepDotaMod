#include "json2.js"

function selectLayerPixels()
{
  // =======================================================
  var id710 = charIDToTypeID( "setd" );
  var desc168 = new ActionDescriptor();
  var id711 = charIDToTypeID( "null" );
  var ref128 = new ActionReference();
  var id712 = charIDToTypeID( "Chnl" );
  var id713 = charIDToTypeID( "fsel" );
  ref128.putProperty( id712, id713 );
  desc168.putReference( id711, ref128 );
  var id714 = charIDToTypeID( "T   " );
  var ref129 = new ActionReference();
  var id715 = charIDToTypeID( "Chnl" );
  var id716 = charIDToTypeID( "Chnl" );
  var id717 = charIDToTypeID( "Trsp" );
  ref129.putEnumerated( id715, id716, id717 );
  desc168.putReference( id714, ref129 );
  executeAction( id710, desc168, DialogModes.NO );
}

function hexToRgb(hex) {
    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ? {
      r: parseInt(result[1], 16),
      g: parseInt(result[2], 16),
      b: parseInt(result[3], 16)
    } : null;
  }

function read_config()
{
    var local_folder =  (new File($.fileName)).parent+"/"
    var file = new File(local_folder + "batchconfig.json")
    file.open("r")
    var file_string = file.read()
    file.close()
    return JSON.parse(file_string)
}

var config = read_config()

function center_layer(layer)
{
  var layer_bounds_width = layer.bounds[2] - layer.bounds[0]
  var layer_bounds_height = layer.bounds[3] - layer.bounds[1]
  var text_x = layer.bounds[0]
  var text_y = layer.bounds[1]
  var center_document_x = activeDocument.width/2
  var center_document_y = activeDocument.height/2
  var center_text_x = layer_bounds_width/2
  var center_text_y = layer_bounds_height/2
  layer.translate(center_document_x - text_x - center_text_x, center_document_y - text_y - center_text_y)
}

var original_unit = app.preferences.rulerUnits
var oversize_coefficient = 4
app.preferences.rulerUnits = Units.PIXELS

for (var i = 0; i < config["content"].length; i++)
{
  // make file with specified width and height
  var doc_original = app.documents.add(config["width"]*oversize_coefficient, config["height"]*oversize_coefficient)

  // add text 
  var layer_original = doc_original.artLayers.add()
  doc_original.artLayers.getByName("Background").remove()
  layer_original.kind = LayerKind.TEXT
  var text_item_ref = layer_original.textItem
  text_item_ref.contents = config["content"][i]["display_text"]
  var rgb = hexToRgb(config["fill_color"])
  text_item_ref.color.rgb.red = rgb.r
  text_item_ref.color.rgb.green = rgb.g
  text_item_ref.color.rgb.blue = rgb.b
  text_item_ref.size = config["font_size"]*oversize_coefficient

  // center text
  layer_original.rasterize(RasterizeType.ENTIRELAYER)
  center_layer(layer_original)
  
  // stroke image
  selectLayerPixels()
  var rgb_stroke_temp = hexToRgb(config["border_color"])
  var rgb_stroke = new SolidColor()
  rgb_stroke.rgb.red = rgb_stroke_temp.r
  rgb_stroke.rgb.green = rgb_stroke_temp.g
  rgb_stroke.rgb.blue = rgb_stroke_temp.b
  var stroke_layer = doc_original.artLayers.add()
  doc_original.selection.stroke(rgb_stroke, config["border_width"]*oversize_coefficient, StrokeLocation.OUTSIDE)
  doc_original.selection.selectAll()
  
  // gaussian blur
  stroke_layer.move(layer_original, ElementPlacement.PLACEAFTER)
  var blur_layer = stroke_layer.duplicate()
  blur_layer.move(stroke_layer, ElementPlacement.PLACEAFTER)
  blur_layer.applyGaussianBlur(5)
  blur_layer.opacity = 70
  
  // motion blur
  layer_original.copy(true)
  var motion_blur_layer = doc_original.paste()
  motion_blur_layer.adjustLevels(0,0,0,255,255)
  motion_blur_layer.move(stroke_layer, ElementPlacement.PLACEAFTER)
  motion_blur_layer.applyMotionBlur(90, 50)
  motion_blur_layer.applyGaussianBlur(5)
  motion_blur_layer.opacity = 30
  layer_original.copy(true)

  // make targa alpha

  // new file
  var doc_tga = app.documents.add(config["width"]*oversize_coefficient, config["height"]*oversize_coefficient)

  // setup layers
  var layer_tga = doc_tga.paste()
  doc_original.close(SaveOptions.DONOTSAVECHANGES)
  doc_tga.artLayers.getByName("Background").remove()
  center_layer(layer_tga)
  app.doAction("make_alpha_raw", "Liam")

  // grey background
  var layer_background = doc_tga.artLayers.add()
  doc_tga.selection.selectAll()
  var grey_fill = new SolidColor()
  grey_fill.rgb.red = 127
  grey_fill.rgb.green = 127
  grey_fill.rgb.blue = 127
  doc_tga.selection.fill(grey_fill, ColorBlendMode.NORMAL, 100, false)  
  layer_background.move(layer_tga, ElementPlacement.PLACEAFTER)
  doc_tga.resizeImage(config["width"], config["height"])

  // save targa file to working directory
  var targa_file = new File(config["save_folders"][Math.floor(i/30 % 30)] + config["content"][i]["name"]+".tga")
  $.writeln(targa_file.path)
  var saveOptions = new TargaSaveOptions()
  saveOptions.alphaChannels = true
  saveOptions.resolution = TargaBitsPerPixels.THIRTYTWO
  saveOptions.rleCompression = true
  app.activeDocument.saveAs(targa_file, saveOptions, true, Extension.LOWERCASE)

  // release references
  doc_original = null
  layer_original = null
  doc_tga = null
  layer_tga = null
  alpha_channel = null
}








app.preferences.rulerUnits = original_unit