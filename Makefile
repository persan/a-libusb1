all:
compile:
install:
gen:
	rm -rf .gen; mkdir .gen
	echo "extern \"C\" {" >.gen/gen.cpp
	echo "#include <libusb.h>" >>.gen/gen.cpp
	echo "}" >>.gen/gen.cpp
	cd .gen; gcc -I /usr/include/libusb-1.0/ -c gen.cpp -fdump-ada-spec
	rm -rf src/gen; mkdir -p src/gen
	cp .gen/*libusb_h.ads .gen/*bits_types_struct_timeval_h.ads src/gen
	sed -f sed/all.sed -i src/gen/*.ads
	gprbuild -p -P libusb1.gpr

test:
