CFG=my-slide-config.json

all: ml-lecture-2020-03-23.slides.html ml-lecture-2020-03-25.slides.html

# Nice way:
%.slides.html: %.ipynb $(CFG)
    jupyter nbconvert $<.ipynb --config $(CFG)
    
# Ugly but copy-pastable way:
ml-lecture-2020-03-23.slides.html: ml-lecture-2020-03-23.ipynb my-slide-config.json
    jupyter nbconvert ml-lecture-2020-03-23.ipynb --config my-slide-config.json

ml-lecture-2020-03-25.slides.html: ml-lecture-2020-03-25.ipynb my-slide-config.json
    jupyter nbconvert ml-lecture-2020-03-25.ipynb --config my-slide-config.json