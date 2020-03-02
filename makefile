.PHONY: tangle
tangle:
	emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "fennel-the-book.org")'

.PHONY: test
test:
	fennel test.fnl
