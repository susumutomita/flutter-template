.PHONY: install
install:
	cd template && flutter pub get

.PHONY: test
test:
	cd template && flutter test

.PHONY: test_coverage
test_coverage:
	cd template && flutter test --coverage

.PHONY: lint
lint:
	cd template && flutter analyze

.PHONY: format
format:
	cd template && flutter format

.PHONY: format_check
format_check:
	cd template && flutter format --set-exit-if-changed .

.PHONY: before_commit
before_commit: test format lint
