I was watching youtube videos about VIM last night ~1:30AM when I found a video from `Conner McDaniel`.
Apparently this person studies or studied medical school somewhere but for my surprise he uses VIM to 
kind of organize his personal studies.

Anyways, found this video about him explaning his Flash Card System using bash. I paused his video
and decided to commit his little script on this repository.

Reference: [https://www.youtube.com/watch?v=lX8jqo70r1I](https://www.youtube.com/watch?v=lX8jqo70r1I)

---

```bash
#!/bin/bash

set -e

# Configuration
FILE="$HOME/Dropbox/AWS/Devops_Engineer_Certification.csv"

main() {
  IFS=$';'; read -a q <<<$(shuf -n 1 "$FILE")
  echo "======================================================="
  echo "Category: ${q[0]}"
  echo "Question: ${q[1]}"
  read _
  echo "Answer: ${q[2]}"
  echo ''
}

while true; do
  main
done
```
