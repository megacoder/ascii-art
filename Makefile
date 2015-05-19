TARGETS=all check clean clobber distclean install uninstall
TARGET=all

PREFIX=${DESTDIR}/opt
BINDIR=${PREFIX}/bin
SUBDIRS=

ifeq	(${MAKE},gmake)
	INSTALL=ginstall
else
	INSTALL=install
endif

.PHONY: ${TARGETS} ${SUBDIRS}

all::	ascii-art

${TARGETS}::

clobber distclean:: clean

check::	ascii-art
	./ascii-art ${ARGS}

install:: ascii-art
	${INSTALL} -D ascii-art ${BINDIR}/ascii-art

uninstall::
	${RM} ${BINDIR}/ascii-art

ifneq	(,${SUBDIRS})
${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}
${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
endif
