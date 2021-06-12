# Contents

- make depression / non-depression directories
```
mkdir depression non-depression
```

- If any .txt file includes the word "depression", .edf files in the same directory will be copied to depression/.
```
find . -type f -name \*.txt | xargs grep -l  "depression" | xargs -I {} dirname {} | xargs -I {} find {} -type f -name \*.edf | xargs -J% cp % depression/
```

- If any .txt file doesn't include the word "depression", .edf files in the same directory will be copied to non-depression/.
```
find . -type f -name \*.txt | xargs grep -lv "depression" | xargs -I {} dirname {} | xargs -I {} find {} -type f -name \*.edf | xargs -J% cp % non-depression/
```
