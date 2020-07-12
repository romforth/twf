# makefile : Turn "tree walk format" flat files into groff/dot and then to pdf
#
# Copyright (C) 2020 Charles Suresh <charles.suresh@gmail.com>
# SPDX-License-Identifier: AGPL-3.0-only
# Please see the LICENSE file for the Affero GPL 3.0 license details

all : adam.pdf abe.pdf
	evince $<
%.pdf : %.dot
	dot -T pdf -o $@ $<
%.dot : %.twf twf
	./twf $< > $@
clean:
	rm -f abe.pdf adam.pdf
