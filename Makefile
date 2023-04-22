default: website

upgrade:
	pip install -r requirements.txt

website:
	mkdocs build --clean

serve:
	mkdocs serve

#deploy:
#	cd ../athenian-robotics.github.io; mkdocs gh-deploy --config-file ../athenian-robotics-mkdocs/mkdocs.yml --remote-branch master

clean:
	rm -rf site