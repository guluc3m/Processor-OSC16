Steps to execute and upload this code to a Cyclone IV FPGA:

- First open quartus prime 18.1 Lite Edition (It has to include The Cyclone IV package, when downloading)
- Open the proyect by selecting File -> Open Project and selecting the .qpf file
- Compile the project by selecting Processing -> Start Compilation
- Connect the USB Blaster to the FPGA board, power the FPGA board, and lastly connect the USB Blaster to the computer
- Open the programmer wizard by selecting Tools -> Programmer
- In the programmer wizard select Hardware Setup, and select in the option currently selected hardware the USB Blaster connected
- Click on the Image of the EP4CE622 chip image and press start
- The upload should start and when the Progress bar is filled the upload will have finished