all: output.txt

output.txt: input.txt
	cp input.txt output.txt
	echo "is cool" >> output.txt

pic: pics/out.png

pics/out.png: Makefile
	make -Bnd | ../../makefile2graph/make2graph | dot -Tpng -o pics/out.png

clean: 
	rm output.txt

