/// @description  PlatformCheck();

var collision = IsBlocked(0, sign(vy));

if (collision) {
    if (vy >= 0) {
        platformTarget = true;
    } else {
        // Platform above
        vy = 0;
    }
    return true;
}

platformTarget = false;
return false;