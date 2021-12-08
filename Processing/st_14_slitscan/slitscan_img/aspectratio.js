// calculate aspect ratio
function aspectRatio(width, height, heightofImg){
  var aspectRatio = width / height;
  var nWidth = heightofImg/2 * aspectRatio;
  var nHeight = nWidth / aspectRatio;
  return {w: nWidth, h: nHeight};
}
