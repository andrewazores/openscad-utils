include <./Units.scad>

function threadWidth(key) =
  key == "6" ? 0.13 * INCH :
  key == "8" ? 0.16 * INCH :
  key == "10" ? 0.19 * INCH :
  "Error"
;
