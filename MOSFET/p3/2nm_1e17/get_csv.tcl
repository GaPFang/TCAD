set mydata2D [load_file MOSFET_Vds0p5V_des.plt]
export_variables -dataset $mydata2D -filename "data.csv" -overwrite
