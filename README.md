# travis_make_one_step

Branch   |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)
---------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/travis_make_one_step.svg?branch=master)](https://travis-ci.org/richelbilderbeek/travis_make_one_step)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/travis_make_one_step.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/travis_make_one_step)

[Travis CI make example](https://github.com/richelbilderbeek/travis_make_tutorial)
of a pipeline of one step.

## Explanation

![](pics/out.png)

First, we specify in the `Makefile` that when we do `make`, the
success is dependent on `output.txt`:

```
all: output.txt
```

Second, we specify in the `Makefile` that `output.txt` is dependent on
`input.txt`. If `input.txt` changes, it will be copied to `output.txt`,
after which some text is appended. 

```
output.txt: input.txt
	cp input.txt output.txt
	echo "is cool" >> output.txt
```

## FAQ

### How did you make the picture?

Using [lindenb/makefile2graph](https://github.com/lindenb/makefile2graph).
After it is installed, do:

```
make -Bnd | ../../makefile2graph/make2graph | dot -Tpng -o pics/out.png
```

Note that `../../makefile2graph/make2graph` is my personal relative path
to the executable. You probably need to change it to your own relative
path.

