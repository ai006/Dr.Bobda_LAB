

rmi_write  0x7fff 0x02
rmi_write 0x8001 0x45
rmi_write 0x8000 0x5e
rmi_write_file 0x0000 .\iCE40_UltraLite.txt

DELAY 100

rmi_write  0x7fff 0x04
rmi_write 0x8001 0x22
rmi_write 0x8000 0x9a
rmi_write_file 0x0000 .\lattice_logo_240_yellow.txt



DELAY 100
rmi_write  0x7fff 0x08
rmi_write 0x8001 0x4f
rmi_write 0x8000 0xec
rmi_write_file 0x0000 .\Breaking_240.txt


rmi_write  0x7fff 0x02
rmi_read   0x7fff 1
rmi_read   0x8000 1
rmi_read   0x8001 1
rmi_read   0x7fff 1
