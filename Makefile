all:
	cd ../code; docco src/*.lisp; 
	cp -r ../code/docs/ .
	git add *
	git commit -am update
	git push
