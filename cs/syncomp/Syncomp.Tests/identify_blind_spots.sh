#!/bin/bash 

echo "PARSER:"
echo
diff <(ls ../Syncomp/Parser/Paths/ | cut -d. -f1 | tr " " "\n") <(ls --format=single-column ./Parser/Paths/ | tr " " "\n")

echo "TRANSFORMER:"
echo
diff <(ls ../Syncomp/Transformer/Emitters/ | cut -d. -f1 | tr " " "\n") <(ls --format=single-column ./Transformer/Emitters/ | tr " " "\n")
