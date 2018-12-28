include <./Units.scad>

function threadWidth(key) =
  key == 6 ? 0.13 * INCH :
  key == 8 ? 0.16 * INCH :
  key == 10 ? 0.19 * INCH :
  "Error"
;

// TODO: implement this using string operations rather than lookup
function getThreadSize(key) =
  key == "6-32" ? 6 :
  key == "8-32" ? 8 :
  key == "10-32" ? 10 :
  "Error"
;
