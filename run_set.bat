if test $# != 1 ; then
echo "Run set requires 1 argument"
echo "Usage :"
echo " run_set.bat <run_name>"
exit 1
fi

// sample run sets

echo "Running test set $1"
./cmp_api.test.bat 473782 $1 a3dva29la0BnbGdkZXYuY29tOkdsZ3JvdXAxMjM=
./cmp_api.test.bat 643305 $1 dGVzdDJAZ2xnZGV2LmNvbTpHbGdyb3VwMTIz
