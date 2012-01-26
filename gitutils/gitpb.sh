#!/bin/bash

brnch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
git push -u origin $brnch
git push origin $brnch:$brnch'_backup'
