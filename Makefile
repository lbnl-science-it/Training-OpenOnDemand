all: Training-openondemand_slides.html Training-openondemand.html

Training-openondemand.html: Training-openondemand.md
	pandoc -s -o Training-openondemand.html Training-openondemand.md

Training-openondemand_slides.html: Training-openondemand.md
	pandoc -s --webtex -t slidy -o Training-openondemand_slides.html Training-openondemand.md

clean:
	rm -rf Training-openondemand.html Training-openondemand_slides.html
