transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/glitch/Documents/github/NanoIntro/full_sub.vhd}
vcom -93 -work work {/home/glitch/Documents/github/NanoIntro/DE0_NANO.vhd}

