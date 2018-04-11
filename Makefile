all: init

init:
	git submodule foreach --recursive git checkout master \
  && cd ./rori_core \
	&& git submodule foreach --recursive git checkout master \
	&& make dependencies \
	&& make keys
