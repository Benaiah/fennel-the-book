.PHONY: tangle
tangle: fennel-the-book.org
	emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "fennel-the-book.org")'

fennel-the-book.fnl: fennel-the-book.org
	make tangle

test.fnl: fennel-the-book.org
	make tangle

.PHONY: test
test: fennel-the-book.fnl test.fnl
	fennel test.fnl -v
