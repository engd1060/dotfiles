#!/bin/bash
# configurar o monitor

#Screen 0: minimum 320 x 200, current 1920 x 1080, maximum 16384 x 16384
#DisplayPort-0 disconnected primary (normal left inverted right x axis y axis)
#DisplayPort-1 disconnected (normal left inverted right x axis y axis)
#DisplayPort-2 connected 1920x1080+0+0 (normal left inverted right x axis y axis) 698mm x 393mm
#   1920x1080     60.00 + 144.00*  119.98    99.93    50.00    59.94  
#   1680x1050     59.88  
#   1280x1024     75.02    60.02  
#   1440x900      59.90  
#   1280x800      60.00  
#   1280x720      60.00    50.00    59.94  
#   1024x768     119.93    99.99    75.03    70.07    60.00  
#   832x624       74.55  
#   800x600      119.93    99.86    72.19    75.00    60.32    56.25  
#   720x576       50.00  
#   720x480       60.00    59.94  
#   640x480      119.80    99.83    75.00    72.81    66.67    60.00    59.94  
#   720x400       70.08  

# --brightness 0.95 (define o brilho em 95%)
# --rate 144 (define o fresh rate em 144Hz)
# --output DisplayPort-2 (define a saída)

xrandr --output DisplayPort-2 --brightness 0.95 --rate 144