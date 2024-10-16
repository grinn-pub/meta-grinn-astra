FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

DTS_NAME = "grinn-astra-1680-evb"
DTSI_NAME = "grinn-astra-1680"
DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"

SRC_URI += " \
    file://eth.cfg \
	file://${DTS_NAME}.dts \
	file://${DTSI_NAME}.dtsi \
"

do_compile:prepend() {
	cp ${WORKDIR}/${DTS_NAME}.dts ${DT_DIR}/
	cp ${WORKDIR}/${DTSI_NAME}.dtsi ${DT_DIR}/
}


