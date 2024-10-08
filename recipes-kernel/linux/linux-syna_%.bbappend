FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

DT_NAME = "grinn-astra-1680-evb"
DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"

SRC_URI += " \
	file://${DT_NAME}.dts \
"

do_compile:prepend() {
	cp ${WORKDIR}/${DT_NAME}.dts ${DT_DIR}/
}


