## Configuration for the Creality K1 3D printer.
The following is the configuration used on my Creality K1 3d Printer.

The original configuration can be found in the `original-config` branch for comparison, see [diff here](https://github.com/husjon/creality-k1/compare/original-config...main?diff=split).


If you decide to use this configuration, make sure to re-run the following:
* PID configuration for bed and extruder
* Input Shaper
* Bed Mesh

All of these parameters vary from printer to printer due to small manufacturing differences.  
**NOTE**: I am in no way responsible for your printer.

You might also want to check the following:
* Rotation distance  
  My printer was over-extruding slightly, hence it has been adjusted.


## Changes from the original configuration
* Set idle timeout to 5 minutes (was essentially disabled)
* Removed Stop motors from the END_PRINT macro.  
  This allows us to move the bed if needed without homing the printer again.
* Enabled Stealthchop on X,Y and Z steppers.  
  This quiets down the printer quite a bit.
* Set X, Y Max Velocity to 600mm/s (was 1000mm/s)
* Reduced X Y Max Acceleration to 15000mm/s^2 because of stealthchop (was 20000mm/s^2)
* Set Z Max Velocity to 7.5mm/s (was 20mm/s)  
  Making it less noisy.
* Set Z acceleration to 150mm/s (was 300m/s)
* Adjusted rotation distance on extruder from to 6.8 (from 6.9)
* Enabled firmware retraction (0.2mm at 100mm/s)
* Set recovery velocity to 100mm/s (was 500mm/s)
