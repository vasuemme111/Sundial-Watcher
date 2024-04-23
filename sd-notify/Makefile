.PHONY: build test package clean

build:
	poetry install

test:
	poetry run sd-notify --help  # Ensures that it at least starts
	make typecheck

typecheck:
	poetry run mypy sd_notify --ignore-missing-imports

package:
	pyinstaller sd-notify.spec --clean --noconfirm

clean:
	rm -rf build dist
	rm -rf sd_notify/__pycache__
