#!/bin/bash
echo 'hello world'
echo 'bash'
for i in {1..3} #print beeps at end of program
do
    echo -e " $i beeps\a"
    sleep 1
done