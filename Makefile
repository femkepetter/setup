INTERACTIVE=1
INSIDE_DOCKER:=$(shell cat /proc/1/cgroup | cut -d: -f3 | grep -q '/docker/' && echo 1 || echo 0)

install::
optional::

all: | install optional

include */*.vars.make */*/*.vars.make */*.make */*/*.make
