 #!/usr/bin/env bash
  
for o in $(ls -1 *); do
mv $o $(echo $o | awk -F. '{print $1".sh"}');
done

