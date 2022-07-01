dataset=tree-preservation-zone
lpa="local-authority-eng:NET"
resource=0c035f369a58fefe56046a87edf4f9429ae7c95aefc6a8decf0e4d85cda5ab0c
_resource=""

let e=19110555

grep "unknown entity" issue/$dataset/$resource.csv |
    sed -e 's/^.*://' -e 's/\r//'|
    sort -u |

while read ref
do
let e=e+1
echo "$dataset,$_resource,,$lpa,$ref,$e"
done
