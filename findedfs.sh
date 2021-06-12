mkdir depression non-depression

find . -type f -name \*.txt | xargs grep -l  "depression" | xargs -I {} dirname {} | xargs -I {} find {} -type f -name \*.edf | xargs -J% cp % depression/
find . -type f -name \*.txt | xargs grep -lv "depression" | xargs -I {} dirname {} | xargs -I {} find {} -type f -name \*.edf | xargs -J% cp % non-depression/

