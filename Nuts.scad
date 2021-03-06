include <Logging.scad>
include <Units.scad>

module HexNut(flatWidth, height, center) {
    cylinder(r=flatWidth / 2 / cos(30) + 0.1, height, $fn=6, center=center);
}

module ImperialNut(key = -1, center=false) {
    if (key != -1) {
        HexNut(widthTable(key), heightTable(key), center);
    } else {
        logError("ImperialNut invoked without key");
    }
}

module MetricNut(key = -1, center=false) {
    if (key != -1) {
        HexNut(widthTable(key), heightTable(key), center);
    } else {
        logError("MetricNut invoked without key");
    }
}

function widthTable(key = "0") =
    // Imperial Sizes
    key == "6-32" ? 0.312 * INCH :
    key == "8-32" ? 0.344 * INCH :
    key == "10-32" ? 0.375 * INCH :
    "Error"
;

function heightTable(key = "0") =
    // Imperial Sizes
    key == "6-32" ? 0.114 * INCH :
    key == "8-32" ? 0.130 * INCH :
    key == "10-32" ? 0.130 * INCH :
    "Error"
;
