setup:
	python3 setup.py sdist bdist_wheel
u:
	pip uninstall onmqtt
i:
	pip install dist/onmqtt-0.1-py3-none-any.whl
t:
	python3 test/test.py
upload:
	python3 -m twine upload --repository-url https://pypi.org/legacy/ dist/*
uploadreal:
	twine upload dist/*
