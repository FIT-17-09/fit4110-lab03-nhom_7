.PHONY: install lint mock mock-camera mock-vision mock-all test-mock test-local test-html test-ci clean

install:
	npm install

lint:
	npm run lint:contracts

mock: mock-camera

mock-camera:
	npm run mock:camera

mock-vision:
	npm run mock:vision

mock-all:
	npm run mock:all

test-mock:
	npm run test:mock

test-local:
	npm run test:local

test-html:
	npm run test:html

test-ci:
	npm run test:ci

clean:
	rm -f reports/*.xml reports/*.html reports/*.json prism*.log
