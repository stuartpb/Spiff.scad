function charentry(font,char) = font[search(char,font,1)[0]];
function glyph(font,char) = charentry(font,char)[2];

module write(string,font,spacing=1,i=0) {
  if (i<len(string) && search(string[i],font,1)[0]) {
    if (glyph(font,string[i])){
      polygon(points=glyph(font,string[i])[0], paths=glyph(font,string[i])[1]);
    }
    translate([charentry(font,string[i])[1] + spacing,0,0])
      write(string,font,spacing,i=i+1);
  }
}
