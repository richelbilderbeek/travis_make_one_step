all: output.txt

output.txt: input.txt
	cp input.txt output.txt
	echo "is cool" >> output.txt

