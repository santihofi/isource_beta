v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 650 70 650 90 {lab=vdd}
N 650 150 650 170 {lab=GND}
N 410 -225 410 -205 {lab=#net1}
N 520 -20 520 0 {lab=out}
N 520 -20 540 -20 {lab=out}
N 520 70 520 85 {lab=GND}
N 470 30 480 30 {lab=out}
N 470 -20 470 30 {lab=out}
N 470 -20 520 -20 {lab=out}
N 520 30 535 30 {lab=GND}
N 535 30 535 70 {lab=GND}
N 520 70 535 70 {lab=GND}
N 520 60 520 70 {lab=GND}
N 470 -65 470 -20 {lab=out}
N 410 -65 410 -20 {lab=GND}
N 490 -225 490 -205 {lab=vss}
N 470 -225 490 -225 {lab=vss}
N 450 -225 450 -205 {lab=vdd}
N 490 -225 510 -225 {lab=vss}
N 470 -225 470 -205 {lab=vss}
N 510 -225 510 -205 {lab=vss}
N 530 -225 530 -205 {lab=vss}
N 510 -225 530 -225 {lab=vss}
N 530 -230 530 -225 {lab=vss}
C {devices/code_shown.sym} 650 -250 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp \{\{ temp \}\}
.param mc_ok = \{\{ sigma \}\}
.option SEED = \{\{ seed \}\}
.option method=gear
.control
save all
save @n.xm3.nsg13_hv_nmos[ids]
op  
let idd = i(V3)
let iout = @n.xm3.nsg13_hv_nmos[ids]

quit
.endc
"}
C {lab_pin.sym} 540 -20 2 0 {name=p28 sig_type=std_logic lab=out}
C {vsource.sym} 650 120 0 0 {name=V2 value=\{\{vdd\}\} savecurrent=false}
C {gnd.sym} 650 170 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 650 70 3 1 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 410 -285 3 1 {name=p1 sig_type=std_logic lab=vdd}
C {vsource.sym} 410 -255 0 0 {name=V3 value=0 savecurrent=true}
C {simulator_commands_shown.sym} 170 160 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOShv.lib mos_\{\{ corner_mos \}\}
.lib cornerRES.lib res_\{\{ corner_res \}\}
"
      }
C {heichip/isource_beta/schematic/xschem/isource_beta.sym} 170 -95 0 0 {name=x1
spice_ignore=true}
C {gnd.sym} 410 -20 0 0 {name=l2 lab=GND}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 500 30 0 0 {name=M3
l=4u
w=\{\{w_load\}\}
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 520 85 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 530 -230 3 1 {name=p3 sig_type=std_logic lab=vss}
C {lab_pin.sym} 450 -225 3 1 {name=p2 sig_type=std_logic lab=vdd}
C {heichip/isource_beta/schematic/xschem/isource_beta_pex.sym} 410 -135 0 0 {name=x2}
C {devices/code_shown.sym} 80 240 0 0 {name=inc only_toplevel=true 
value="
.include /foss/designs/heichip/isource_beta/netlist/pex/isource_beta_magic_pex_3.spice
"}
