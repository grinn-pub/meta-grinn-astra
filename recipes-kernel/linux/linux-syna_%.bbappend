DTSI = "grinn-astra-1680"
DTS_ADA = "grinn-astra-1680-ada"
DTS_EVB = "grinn-astra-1680-evb"

FILESEXTRAPATHS:prepend := "${THISDIR}/${DTSI}:"
FILESEXTRAPATHS:prepend := "${THISDIR}/${DTS_ADA}:"
FILESEXTRAPATHS:prepend := "${THISDIR}/${DTS_EVB}:"

DT_DIR = "${S}/arch/arm64/boot/dts/synaptics"

SRC_URI:append = " \
	file://${DTS_ADA}.dts \
	file://${DTS_EVB}.dts \
	file://${DTSI}.dtsi \
"

SRC_URI:append:grinn-astra-1680-ada = " \
"

SRC_URI:append:grinn-astra-1680-evb = " \
    file://enable-led-gpio.cfg \
    file://eth.cfg \
"

do_compile:prepend() {
	cp ${WORKDIR}/${DTSI}.dtsi ${DT_DIR}/
	cp ${WORKDIR}/${DTS_ADA}.dts ${DT_DIR}/
	cp ${WORKDIR}/${DTS_EVB}.dts ${DT_DIR}/
}

