inktexfunc () {
    FILENAME="${1%.*}"
    EXTENSION="${1##*.}"
    if [[ $EXTENSION == 'svg' ]]
    then 
        echo "$1 -> $FILENAME.pdf + $FILENAME.pdf_tex"
        inkscape -D -y0 --export-pdf=$FILENAME.pdf --export-latex -d300 $1
    else
        echo "Only 1 input, the svg file"
    fi
}

alias inkscapetex=inktexfunc
