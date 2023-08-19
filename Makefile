# first rule = default
all: public/cards.html

public/cards.html: source/* source/templates/*
	(cd source && python3 generate_cards.py)

.PHONY: build clean watch-linux
build:
	watching_testrunner --pattern '*.py' --pattern '*.j2' --pattern '*.yml' -- make all
watch-linux:
	inotifywait -e close_write,moved_to,create -m . * */* | \
		while read -r directory events filename; do \
			make all; \
		done

clean:
	rm public/cards.html
	rm -r __pycache__
