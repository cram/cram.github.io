all:
	cd ../code; docco src/*.lisp; 
	cp -r ../code/docs/ .
	cp ../code/etc/docco.css .
	for i in *.html; do
		bash ../code/etc/htmladd.sh $i
	done
	git add *
	git commit -am update
	git push
