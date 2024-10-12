.PHONY: build upload test-upload

build:
	python -m build

upload:
	twine upload dist/*

test-upload:
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

clean:
	rm -rf build dist *.egg-info

list-contents:
	tar -tzf dist/*.tar.gz
