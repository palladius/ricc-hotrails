
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


.PHONY: Dockerfile

# https://github.com/fly-apps/dockerfile-rails
Dockerfile:
# --no-lock - don't add linux platforms, set BUNDLE_DEPLOY, or --frozen-lockfile. May be needed at times to work around a rubygems bug.

	# This works ! Now try without nolock and activate cache
	#rails g dockerfile --optimistic --force --compose --no-lock

	# Trying this out with more speedup stuff. 4min on GCB atm
	rails g dockerfile --optimistic --force --compose --cache --parallel

