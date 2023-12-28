OUT = bookindex.md

MDS := $(shell grep -o '[a-z0-9/-]\+\.md' SUMMARY.md | grep -v index.md) README.md

$(OUT): mkindex.pl Makefile index-words $(MDS)
	perl mkindex.pl $(MDS) > $(OUT)

mdcheck: 
	@./checkmd $(MDS)

check: 
	@proselint $(MDS)

wordcheck: 
	@./mgrep $(MDS)

fixup:
	for i in $(MDS); do ./lang.sh $$i; done

uni.md: uni.pl $(MDS) SUMMARY.md $(OUT)
	./uni.pl SUMMARY.md >$@

everything-curl.pdf:	uni.md
	pandoc -o everything-curl.pdf pdf.txt uni.md --toc

pdf: everything-curl.pdf

everything-curl.epub:	uni.md
	pandoc -o everything-curl.epub --epub-cover-image=cover.jpg epub.txt uni.md

epub: everything-curl.epub

clean:
	rm -f uni.md everything-curl.pdf
