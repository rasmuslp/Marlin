; BIQU B1 Start G-code
M117 Getting the bed up to temp!
M140 S{material_bed_temperature_layer_0}      ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0}      ; Wait for Heat Bed temperature
M117 Pre-heating the extruder!
M104 S160                        ; Start warming extruder to 160
G28                              ; Home all axes
M117 Auto bed-level GO!
G29                              ; Auto bed-level (BL-Touch)
G92 E0                           ; Reset Extruder
M117 Getting the extruder up to temp!
M104 S{material_print_temperature_layer_0}    ; Set Extruder temperature
M109 S{material_print_temperature_layer_0}    ; Wait for Extruder temperature
G1 Z2.0 F3000                    ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X4.1 Y20 Z0.3 F5000.0         ; Move to start position
M117 Purging
G1 X4.1 Y200.0 Z0.3 F1500.0 E15  ; Draw the first line
G1 X4.4 Y200.0 Z0.3 F5000.0      ; Move to side a little
G1 X4.4 Y20 Z0.3 F1500.0 E30     ; Draw the second line
G92 E0                           ; Reset Extruder
G1 Z2.0 F3000                    ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0           ; Move over to prevent blob squish
M117 Autobots go!
; End of custom start GCode