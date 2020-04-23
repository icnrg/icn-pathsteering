all: draft-oran-icnrg-pathsteering.txt draft-oran-icnrg-pathsteering.html draft-oran-icnrg-pathsteering.pdf

draft-oran-icnrg-pathsteering.txt draft-oran-icnrg-pathsteering.html draft-oran-icnrg-pathsteering.pdf: 

%.txt:%.xml
	xml2rfc  $<


%.html:%.xml
	xml2rfc --html $<


%.pdf:%.xml
	xml2rfc --pdf $<

$(TD):
	git submodule init
	git submodule update

td.js: td-pre.js $(TD) td-post.js
	cat td-pre.js $(TD) td-post.js > $@


/usr/local/bin/node:
	brew install node
