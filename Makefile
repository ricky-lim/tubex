lint:
	black src/

clean:
	rm -rf dist/ build/

package: clean
	python setup.py sdist bdist_wheel

upload: clean package
	twine upload dist/*


