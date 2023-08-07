# Makefile for node-red-contrib-parquet
#
# Source:: https://github.com/snstac/node-red-contrib-parquet
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2023 Greg Albrecht
# License:: Apache License, Version 2.0
#

.DEFAULT_GOAL := all


all: install

install:
	npm install -g .

publish:
	npm publish

lint: jshint eslint jslint

jshint:
	jshint nodes/*.js

eslint:
	eslint nodes/*.js

jslint:
	jslint nodes/*.js

prettier:
	npx prettier --write .

mkdocs:
	pip install -r docs/requirements.txt
	mkdocs serve