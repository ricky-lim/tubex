lint:
	black src/

clean:
	rm -rf dist/ build/

package:
	python setup.py sdist bdist_wheel

upload: clean package
	twine upload dist/*


