if test $# != 3 ; then
echo "Cmp compare requires 3 arguments"
echo "Usage :"
echo " cmp_api.test.bat <personid> <run_name> <basic auth header value>"
exit 1
fi
results=results
if [ ! -d "$results" ]; then
    mkdir $results
fi

echo "Run on person id $1"
parent=$2_$1_results
if [ ! -d "$1" ]; then
    mkdir $parent
fi

basic=$3
action=project_list
echo "Running action $action"
curl -v --header "Content-Type: application/json" --header "Authorization:Basic $basic" http://192.168.33.10:9001/$action>$parent/$action.json

action=project_list_invoice
echo "Running action $action"
curl -v --header "Content-Type: application/json" --header "Authorization:Basic $basic" http://192.168.33.10:9001/$action>$parent/$action.json

action=project_list_pending
echo "Running action $action"
curl -v --header "Content-Type: application/json" --header "Authorization:Basic $basic" http://192.168.33.10:9001/$action>$parent/$action.json

action=profile
echo "Running action $action"
curl -v --header "Content-Type: application/json" --header "Authorization:Basic $basic" http://192.168.33.10:9001/$action>$parent/$action.json



