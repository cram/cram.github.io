all:
	cd ../code; docco src/*.lisp; 
	cp -r ../code/docs/ .
	cp ../code/etc/docco.css .
	git add *
	git commit -am update
	git push
