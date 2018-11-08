all:
	make clean
	make generate


src/gen .gen: # IGNORE
	mkdir -p $@

.gen/gen.cpp:.gen Makefile # IGNORE
	echo "extern \"C\" {"  >$@
	echo "#include <pcap.h>">>$@
	echo "}" >>$@

generate:.gen/gen.cpp src/gen
	cd .gen;g++ -c -C gen.cpp -fdump-ada-spec "-fada-spec-parent=PCAP.Low_Level"
	cp .gen/*-pcap*_h.ads src/gen/
	sed -i --file all.sed src/gen/*.ads
	gprbuild -p -j0 -P alibpcap.gpr

clean:
	rm -rf .gen src/gen .obj
