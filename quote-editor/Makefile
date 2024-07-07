
dev:
	bin/dev

dev-manhouse:
	rails assets:precompile
	rails s

.PHONY: test
test:
	bin/rails test:system

fix-prod:
	bundle lock --add-platform x86_64-linux

Dockerfile:
#rails g dockerfile --optimistic
	rails g dockerfile --optimistic --alpine --force
