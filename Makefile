###############################################################################
### Dynamically list all targets.
### See: https://stackoverflow.com/a/26339924
###############################################################################
.PHONY: list
list:
	@$(MAKE) -pRrq -f $(MAKEFILE_LIST) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$' | xargs -n 1

###############################################################################
### test
###############################################################################
.PHONY: test
test:
	./scripts/test.sh

###############################################################################
### Lint
###############################################################################
.PHONY: lint
lint:
	./scripts/lint.sh