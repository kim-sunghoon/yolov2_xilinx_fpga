all: synthesis

synthesis:
	vivado_hls -f run.tcl
	# cp hls/solution/syn/report/InitiationInterval_csynth.rpt report.rpt
	cp yolov2_ap16_n2m32_inburst/solution1/syn/report/YOLO2_FPGA_csynth.rpt report.rpt
clean:
	rm -r yolov2_ap16_n2m32_inburst || true
	rm report.rpt || true
	rm vivado_hls.log || true

.PHONY: all clean
