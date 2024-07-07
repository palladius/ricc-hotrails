
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

# https://github.com/fly-apps/dockerfile-rails
.PHONY: Dockerfile

Dockerfile:
#rails g dockerfile --optimistic
# --no-lock - don't add linux platforms, set BUNDLE_DEPLOY, or --frozen-lockfile. May be needed at times to work around a rubygems bug.
#	rails g dockerfile --optimistic --alpine --force --compose --no-lock
	rails g dockerfile --optimistic --force --compose --no-lock
