// Author: Stuart P. Bentley <stuart@testtrack4.com>

module spiffsans_write(string,spacing=1,i=0) { if (i < len(string)) {
  if (string[i] == " ") {
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "!") {
    spiffsans_exclaim();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "\"") {
    spiffsans_quote();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "'") {
    spiffsans_apostrophe();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "+") {
    spiffsans_plus();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == ",") {
    spiffsans_comma();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "-") {
    spiffsans_hyphen();
    translate([4 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == ".") {
    spiffsans_period();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "/") {
    spiffsans_slash();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "0") {
    spiffsans_digit_0();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "1") {
    spiffsans_digit_1();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "2") {
    spiffsans_digit_2();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "3") {
    spiffsans_digit_3();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "4") {
    spiffsans_digit_4();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "5") {
    spiffsans_digit_5();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "6") {
    spiffsans_digit_6();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "7") {
    spiffsans_digit_7();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "8") {
    spiffsans_digit_8();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "9") {
    spiffsans_digit_9();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == ":") {
    spiffsans_colon();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == ";") {
    spiffsans_semicolon();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "=") {
    spiffsans_equals();
    translate([4 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "?") {
    spiffsans_question();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "A" || string[i] == "a") {
    spiffsans_uppercase_a();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "B" || string[i] == "b") {
    spiffsans_uppercase_b();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "C" || string[i] == "c") {
    spiffsans_uppercase_c();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "D" || string[i] == "d") {
    spiffsans_uppercase_d();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "E" || string[i] == "e") {
    spiffsans_uppercase_e();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "F" || string[i] == "f") {
    spiffsans_uppercase_f();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "G" || string[i] == "g") {
    spiffsans_uppercase_g();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "H" || string[i] == "h") {
    spiffsans_uppercase_h();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "I" || string[i] == "i") {
    spiffsans_uppercase_i();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "J" || string[i] == "j") {
    spiffsans_uppercase_j();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "K" || string[i] == "k") {
    spiffsans_uppercase_k();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "L" || string[i] == "l") {
    spiffsans_uppercase_l();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "M" || string[i] == "m") {
    spiffsans_uppercase_m();
    translate([10 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "N" || string[i] == "n") {
    spiffsans_uppercase_n();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "O" || string[i] == "o") {
    spiffsans_uppercase_o();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "P" || string[i] == "p") {
    spiffsans_uppercase_p();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "Q" || string[i] == "q") {
    spiffsans_uppercase_q();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "R" || string[i] == "r") {
    spiffsans_uppercase_r();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "S" || string[i] == "s") {
    spiffsans_uppercase_s();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "T" || string[i] == "t") {
    spiffsans_uppercase_t();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "U" || string[i] == "u") {
    spiffsans_uppercase_u();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "V" || string[i] == "v") {
    spiffsans_uppercase_v();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "W" || string[i] == "w") {
    spiffsans_uppercase_w();
    translate([10 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "X" || string[i] == "x") {
    spiffsans_uppercase_x();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "Y" || string[i] == "y") {
    spiffsans_uppercase_y();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "Z" || string[i] == "z") {
    spiffsans_uppercase_z();
    translate([5 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "\\") {
    spiffsans_backslash();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "_") {
    spiffsans_underscore();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "`") {
    spiffsans_grave();
    translate([4 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else if (string[i] == "|") {
    spiffsans_bar();
    translate([2 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  } else {
    spiffsans_noglyph();
    translate([6 + spacing,0,0]) spiffsans_write(string,spacing,i=i+1);
  }
}}

module spiffsans_exclaim() {
  polygon(points=[["0","3"],["0","10"],["2","10"],["2","3"],["0","0"],["0","2"],["2","2"],["2","0"]],paths=[[0,1,2,3],[4,5,6,7]]);
}
module spiffsans_quote() {
  polygon(points=[["0","6"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","6"]],paths=[[0,1,2,3],[4,5,6,7]]);
}
module spiffsans_apostrophe() {
  polygon(points=[["0","6"],["0","10"],["2","10"],["2","6"]],paths=[[0,1,2,3]]);
}
module spiffsans_plus() {
  polygon(points=[["2","2"],["2","4"],["0","4"],["0","6"],["2","6"],["2","8"],["4","8"],["4","6"],["6","6"],["6","4"],["4","4"],["4","2"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_comma() {
  polygon(points=[["0","-2"],["0","2"],["2","2"],["2","-2"]],paths=[[0,1,2,3]]);
}
module spiffsans_hyphen() {
  polygon(points=[["0","4"],["0","6"],["4","6"],["4","4"]],paths=[[0,1,2,3]]);
}
module spiffsans_period() {
  polygon(points=[["0","0"],["0","2"],["2","2"],["2","0"]],paths=[[0,1,2,3]]);
}
module spiffsans_slash() {
  polygon(points=[["0","0"],["4","10"],["6","10"],["2","0"]],paths=[[0,1,2,3]]);
}
module spiffsans_digit_0() {
  polygon(points=[["5","0"],["1","0"],["0","2"],["0","8"],["1","10"],["5","10"],["6","8"],["6","2"],["2","8"],["2","5"],["4","8"],["2","2"],["4","2"],["4","5"]],paths=[[0,1,2,3,4,5,6,7],[8,9,10],[11,12,13]]);
}
module spiffsans_digit_1() {
  polygon(points=[["0","0"],["0","2"],["2","2"],["2","7"],["0","7"],["2","10"],["4","10"],["4","2"],["5","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_digit_2() {
  polygon(points=[["0","0"],["0","2"],["4","6"],["4","8"],["2","8"],["2","6"],["0","6"],["0","8"],["1","10"],["5","10"],["6","8"],["6","5.5"],["2.5","2"],["6","2"],["6","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]]);
}
module spiffsans_digit_3() {
  polygon(points=[["1","0"],["0","2"],["0","4"],["2","4"],["2","2"],["4","2"],["4","4"],["3","4"],["3","6"],["4","6"],["4","8"],["2","8"],["2","6"],["0","6"],["0","8"],["1","10"],["5","10"],["6","8"],["6","6"],["5.5","5"],["6","4"],["6","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]]);
}
module spiffsans_digit_4() {
  polygon(points=[["4","0"],["4","4"],["0","4"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_digit_5() {
  polygon(points=[["0","0"],["0","2"],["4","2"],["4.5","3"],["4","4"],["0","4"],["0","10"],["6","10"],["6","8"],["2","8"],["2","6"],["5","6"],["6","4"],["6","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]]);
}
module spiffsans_digit_6() {
  polygon(points=[["1","0"],["0","2"],["0","8"],["1","10"],["5","10"],["5.5","8"],["2","8"],["2","6"],["5","6"],["6","4"],["6","2"],["5","0"],["2","2"],["4","2"],["4","4"],["2","4"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11],[12,13,14,15]]);
}
module spiffsans_digit_7() {
  polygon(points=[["1","0"],["1","3"],["3","8"],["0","8"],["0","10"],["5","10"],["5","8"],["3","3"],["3","0"]],paths=[[0,1,2,3,4,5,6,7,8]]);
}
module spiffsans_digit_8() {
  polygon(points=[["1","0"],["0","2"],["0","4"],["0.5","5"],["0","6"],["0","8"],["1","10"],["5","10"],["6","8"],["6","6"],["5.5","5"],["6","4"],["6","2"],["5","0"],["2","6"],["4","6"],["4","8"],["2","8"],["2","2"],["4","2"],["4","4"],["2","4"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13],[14,15,16,17],[18,19,20,21]]);
}
module spiffsans_digit_9() {
  polygon(points=[["1","0"],["0","2"],["4","2"],["4","4"],["1","4"],["0","6"],["0","8"],["1","10"],["5","10"],["6","8"],["6","2"],["5","0"],["2","6"],["4","6"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11],[12,13,14,15]]);
}
module spiffsans_colon() {
  polygon(points=[["0","6"],["0","8"],["2","8"],["2","6"],["0","0"],["0","2"],["2","2"],["2","0"]],paths=[[0,1,2,3],[4,5,6,7]]);
}
module spiffsans_semicolon() {
  polygon(points=[["0","6"],["0","8"],["2","8"],["2","6"],["0","-2"],["0","2"],["2","2"],["2","-2"]],paths=[[0,1,2,3],[4,5,6,7]]);
}
module spiffsans_equals() {
  polygon(points=[["0","6"],["0","8"],["4","8"],["4","6"],["0","2"],["0","4"],["4","4"],["4","2"]],paths=[[0,1,2,3],[4,5,6,7]]);
}
module spiffsans_question() {
  polygon(points=[["2","3"],["4","6"],["4","8"],["2","8"],["2","6"],["0","6"],["0","8"],["2","10"],["4","10"],["6","8"],["6","6"],["4","3"],["2","0"],["2","2"],["4","2"],["4","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11],[12,13,14,15]]);
}
module spiffsans_uppercase_a() {
  polygon(points=[["0","0"],["0","8"],["1","10"],["5","10"],["6","8"],["6","0"],["4","0"],["4","4"],["2","4"],["2","0"],["2","6"],["4","6"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6,7,8,9],[10,11,12,13]]);
}
module spiffsans_uppercase_b() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["6","8"],["6","6"],["5.5","5"],["6","4"],["6","2"],["5","0"],["2","6"],["4","6"],["4","8"],["2","8"],["2","2"],["4","2"],["4","4"],["2","4"]],paths=[[0,1,2,3,4,5,6,7,8],[9,10,11,12],[13,14,15,16]]);
}
module spiffsans_uppercase_c() {
  polygon(points=[["6","0"],["1","0"],["0","2"],["0","8"],["1","10"],["6","10"],["6","8"],["2","8"],["2","2"],["6","2"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_uppercase_d() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["6","8"],["6","2"],["5","0"],["2","2"],["4","2"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5],[6,7,8,9]]);
}
module spiffsans_uppercase_e() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["5","8"],["2","8"],["2","6"],["4","6"],["4","4"],["2","4"],["2","2"],["5","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_uppercase_f() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["5","8"],["2","8"],["2","6"],["4","6"],["4","4"],["2","4"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_uppercase_g() {
  polygon(points=[["6","0"],["1","0"],["0","2"],["0","8"],["1","10"],["5.5","10"],["6","8"],["2","8"],["2","2"],["4","2"],["4","6"],["6","6"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_uppercase_h() {
  polygon(points=[["0","0"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","0"],["4","0"],["4","4"],["2","4"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_uppercase_i() {
  polygon(points=[["0","0"],["0","2"],["1.5","2"],["1.5","8"],["0","8"],["0","10"],["5","10"],["5","8"],["3.5","8"],["3.5","2"],["5","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_uppercase_j() {
  polygon(points=[["0.5","0"],["0","1"],["0","4"],["2","4"],["2","2"],["4","2"],["4","8"],["0","8"],["0","10"],["6","10"],["6","1"],["5.5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11]]);
}
module spiffsans_uppercase_k() {
  polygon(points=[["0","0"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","6"],["5","5"],["6","4"],["6","0"],["4","0"],["4","4"],["2","4"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]]);
}
module spiffsans_uppercase_l() {
  polygon(points=[["0","0"],["0","10"],["2","10"],["2","2"],["5","2"],["5","0"]],paths=[[0,1,2,3,4,5]]);
}
module spiffsans_uppercase_m() {
  polygon(points=[["0","0"],["0","8"],["1","10"],["9","10"],["10","8"],["10","0"],["8","0"],["8","8"],["6","8"],["6","0"],["4","0"],["4","8"],["2","8"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]);
}
module spiffsans_uppercase_n() {
  polygon(points=[["0","0"],["0","8"],["1","10"],["5","10"],["6","8"],["6","0"],["4","0"],["4","8"],["2","8"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_uppercase_o() {
  polygon(points=[["5","0"],["1","0"],["0","2"],["0","8"],["1","10"],["5","10"],["6","8"],["6","2"],["2","2"],["4","2"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6,7],[8,9,10,11]]);
}
module spiffsans_uppercase_p() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["6","8"],["6","6"],["5","4"],["2","4"],["2","0"],["2","6"],["4","6"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6,7],[8,9,10,11]]);
}
module spiffsans_uppercase_q() {
  polygon(points=[["1","0"],["0","2"],["0","8"],["1","10"],["5","10"],["6","8"],["6","0"],["2","2"],["4","2"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6],[7,8,9,10]]);
}
module spiffsans_uppercase_r() {
  polygon(points=[["0","0"],["0","10"],["5","10"],["6","8"],["6","6"],["5.5","5"],["6","4"],["6","0"],["4","0"],["4","4"],["2","4"],["2","0"],["2","6"],["4","6"],["4","8"],["2","8"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11],[12,13,14,15]]);
}
module spiffsans_uppercase_s() {
  polygon(points=[["1","0"],["0","2"],["0","3"],["2","3"],["2","2"],["4","2"],["4","4"],["1","4"],["0","5"],["0","8"],["1","10"],["5","10"],["6","8"],["6","7"],["4","7"],["4","8"],["2","8"],["2","6"],["5","6"],["6","5"],["6","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]]);
}
module spiffsans_uppercase_t() {
  polygon(points=[["2","0"],["2","8"],["0","8"],["0","10"],["6","10"],["6","8"],["4","8"],["4","0"]],paths=[[0,1,2,3,4,5,6,7]]);
}
module spiffsans_uppercase_u() {
  polygon(points=[["1","0"],["0","2"],["0","10"],["2","10"],["2","2"],["4","2"],["4","10"],["6","10"],["6","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_uppercase_v() {
  polygon(points=[["2","0"],["0","4"],["0","10"],["2","10"],["2","4"],["4","4"],["4","10"],["6","10"],["6","4"],["4","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_uppercase_w() {
  polygon(points=[["9","0"],["1","0"],["0","2"],["0","10"],["2","10"],["2","2"],["4","2"],["4","10"],["6","10"],["6","2"],["8","2"],["8","10"],["10","10"],["10","2"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]);
}
module spiffsans_uppercase_x() {
  polygon(points=[["0","0"],["0","4"],["1","5"],["0","6"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","6"],["5","5"],["6","4"],["6","0"],["4","0"],["4","4"],["2","4"],["2","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]]);
}
module spiffsans_uppercase_y() {
  polygon(points=[["2","0"],["2","4"],["1","4"],["0","6"],["0","10"],["2","10"],["2","6"],["4","6"],["4","10"],["6","10"],["6","6"],["5","4"],["4","4"],["4","0"]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]);
}
module spiffsans_uppercase_z() {
  polygon(points=[["0","0"],["0","2"],["3","8"],["0","8"],["0","10"],["5","10"],["5","8"],["2","2"],["5","2"],["5","0"]],paths=[[0,1,2,3,4,5,6,7,8,9]]);
}
module spiffsans_backslash() {
  polygon(points=[["4","0"],["0","10"],["2","10"],["6","0"]],paths=[[0,1,2,3]]);
}
module spiffsans_underscore() {
  polygon(points=[["0","0"],["0","2"],["6","2"],["6","0"]],paths=[[0,1,2,3]]);
}
module spiffsans_grave() {
  polygon(points=[["2","6"],["0","10"],["2","10"],["4","6"]],paths=[[0,1,2,3]]);
}
module spiffsans_bar() {
  polygon(points=[["0","0"],["0","10"],["2","10"],["2","0"]],paths=[[0,1,2,3]]);
}