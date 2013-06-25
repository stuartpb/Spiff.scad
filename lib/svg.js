function pathSegListToPoints(segments) {
  var SVGPathSeg = SVGPathSeg;
  var count = segments.numberOfItems || segments.length || 0;
  var results = [], result;
  var segment;
  var current = [0,0];
  var previous;
  for (var i = 0; i < count; i++) {
    previous = current;
    current = null;
    segment = segments.getItem(i);
    switch(segment.pathSegType) {
      case SVGPathSeg.PATHSEG_MOVETO_ABS:
        results[results.length] = result = [];
      case SVGPathSeg.PATHSEG_LINETO_ABS:
      case SVGPathSeg.PATHSEG_CURVETO_CUBIC_ABS:
      case SVGPathSeg.PATHSEG_CURVETO_QUADRATIC_ABS:
      case SVGPathSeg.PATHSEG_ARC_ABS:
      case SVGPathSeg.PATHSEG_CURVETO_CUBIC_SMOOTH_ABS:
      case SVGPathSeg.PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS:
        current = [segment.x, segment.y];
        break;
    
      case SVGPathSeg.PATHSEG_MOVETO_REL: 
        results[results.length] = result = [];
      case SVGPathSeg.PATHSEG_LINETO_REL:
      case SVGPathSeg.PATHSEG_CURVETO_CUBIC_REL:
      case SVGPathSeg.PATHSEG_CURVETO_QUADRATIC_REL:
      case SVGPathSeg.PATHSEG_ARC_REL:
      case SVGPathSeg.PATHSEG_CURVETO_CUBIC_SMOOTH_REL:
      case SVGPathSeg.PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL:
        current = [segment.x + previous[0], segment.y + previous[1]];
        break;
      
      case SVGPathSeg.PATHSEG_LINETO_HORIZONTAL_ABS:
        current = [segment.x, previous[1]];
        break;
      case SVGPathSeg.PATHSEG_LINETO_HORIZONTAL_REL:
        current = [segment.x + previous[0], previous[1]];
        break;

      case SVGPathSeg.PATHSEG_LINETO_VERTICAL_ABS:
        current = [previous[0], segment.y];
        break;
      case SVGPathSeg.PATHSEG_LINETO_VERTICAL_REL:
        current = [previous[0], segment.y + previous[1]];
        break;
      case SVGPathSeg.PATHSEG_CLOSEPATH:
        break; //we basically let closepaths be assumed
      default:
        console.log('unknown path command: ', segment.pathSegTypeAsLetter);
    }
    if (!result) results[0] = result = [];
    if(current) result.push(current);
  }
}

if(typeof module != 'undefined') {
  exports.pathSegListToPoints = pathSegListToPoints;
}
