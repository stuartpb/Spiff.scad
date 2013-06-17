function glyph(font,char) = font[search(font,char)][2];

module write(string,font,spacing=1,i=0) {
  if (i<len(string) && search(font,string[i])) {
    if (glyph(font,string[i])){
      polygon(points=glyph(font,string[i])[0], paths=glyph(font,string[i])[1]);
    }
    translate([font[search(font,string[i])][1] + spacing,0,0])
      write(string,font,spacing,i=i+1);
  }
}
