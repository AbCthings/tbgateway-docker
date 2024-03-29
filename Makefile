VERSION=2.2.1rc
PROJECT=thingsboard
APP=gateway

build:
	cp ../target/tb-gateway.deb .
	docker build --pull -t ${PROJECT}/${APP}:${VERSION} -t ${PROJECT}/${APP}:latest .
	rm tb-gateway.deb

push: build
	docker push ${PROJECT}/${APP}:${VERSION}
	docker push ${PROJECT}/${APP}:latest
