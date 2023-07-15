## Configuration for the Creality K1 3D printer.
The following is the configuration used on my Creality K1 3d Printer.

The original configuration can be found in the `original-config` branch for comparison, see [diff here](https://github.com/husjon/creality-k1/compare/original-config...main?diff=split).


If you decide to use this configuration, make sure to re-run the following:
* PID configuration for bed and extruder
* Input Shaper
* Bed Mesh

All of these parameters vary from printer to printer due to small manufacturing differences.  
**NOTE**: I am in no way responsible for your printer.



## Changes from the original configuration
* Set idle timeout to 5 minutes (was essentially disabled)
* Enabled Stealthchop on X,Y and Z steppers.  
  This quiets down the printer quite a bit.
* Set X, Y Max Velocity to 600mm/s (was 1000mm/s)
* Set Z Max Velocity to 10mm/s (was 20mm/s)  
  Making it less noisy.
* Set Z acceleration to 200mm/s (was 300m/s)
