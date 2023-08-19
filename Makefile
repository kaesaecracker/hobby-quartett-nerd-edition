# first rule = default
all: cards.html

cards.html: cards.yml templates/cards.html.j2 generate_cards.py
	python generate_cards.py

.PHONY: build clean watch-linux
build:
	watching_testrunner --pattern '*.py' --pattern '*.j2' --pattern '*.yml' -- make all
watch-linux:
	inotifywait -e close_write,moved_to,create -m . images templates | \
		while read -r directory events filename; do \
			make all; \
		done

clean:
	rm cards.html
	rm -r __pycache__
