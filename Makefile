.PHONY: build
build:
	watching_testrunner --pattern '*.py' --pattern '*.j2' --pattern '*.yml' -- python generate_cards.py