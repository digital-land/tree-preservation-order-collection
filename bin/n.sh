dataset=tree-preservation-zone
lpa="local-authority-eng:MDW"
resource=3e20b3653f51f3c3ec57a9d39bb9463553df9bf0308f9319785b87ef1116f09e
_resource=""

let e=19111312

grep "unknown entity" issue/$dataset/$resource.csv |
    sed -e 's/^.*://' -e 's/\r//'|
    sort -u |

while read ref
do
let e=e+1
echo "$dataset,$_resource,,$lpa,$ref,$e"
done
