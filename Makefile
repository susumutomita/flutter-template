.PHONY: install
install:
	flutter pub get

.PHONY: test
test:
	flutter test

.PHONY: test_coverage
test_coverage:
	flutter test --coverage

.PHONY: lint
lint:
	flutter analyze

.PHONY: format
format:
	flutter format

.PHONY: format_check
format_check:
	flutter format --set-exit-if-changed .

.PHONY: before_commit
before_commit: test format lint
