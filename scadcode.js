function polyvector(paths){
  var points = [];
  var indices = [];
  for (var i=0; i < paths.length; i++) {
    var pathIndices = indices[i] = [];
    for (var j=0; j < paths[i].length; j++) {
      pathIndices[pathIndices.length] = points.length;
      points[points.length] = paths[i][j];
    }
  }

  return [points,indices];
}

exports.polyvector = polyvector;

exports.polygon = function(paths){
  var polyvec = polyvector(paths);

  return 'polygon(points=' + JSON.stringify(polyvec[0])
    + ',paths=' + JSON.stringify(polyvec[1]) + ');';
};
