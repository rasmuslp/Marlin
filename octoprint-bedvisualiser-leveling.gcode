M155 S30  ; reduce temperature reporting rate to reduce output pollution
M190 S60  ; (optional) wait for the bed to get up to temperature
G28       ; home all axes
G29 P1    ; automatically populate mesh with all reachable points
G29 P3    ; infer the rest of the mesh values
@BEDLEVELVISUALIZER	; tell the plugin to watch for reported mesh
G29 S1 T1       ; Save UBL mesh points to EEPROM.
                ; At this point, if you're using OctoPrint,
                ; you can see the mesh using the Bed Visualizer plugin.
G29 F 10.0      ; Set Fade Height for correction at 10.0 mm.
                ; When the printer reaches the Fade Height, it stops
                ; compensating for the unevenness of the bed.
G29 A           ; Activate the UBL System.
; M420 S1 V T1 ; enabled leveling and report the new mesh
M500            ; Save current setup. WARNING: UBL will be active at power up, before any [`G28`](/docs/gcode/G028.html).
M155 S3   ; reset temperature reporting