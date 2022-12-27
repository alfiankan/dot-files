#!/bin/sh

action="test"

last_test_command=`cat gum_go_test_history`;
use_last_test_command=`gum choose "New Test" "$last_test_command"`;

if [ "$use_last_test_command" = "New Test"  ]; then
    echo "New Test"
else
    echo $last_test_command
    sh -c "exec $last_test_command"
    exit
fi

test_file=`find . -type f -name "*test.go"|gum filter --placeholder "pick a test file or search it here !"| cat`;

test_names=`grep '^func [Test]' $test_file | cat`;

test_names=`echo $test_names | sed 's/func //g'| sed 's/{//g' |  sed 's/)//g' | sed 's/(t//g' | sed 's/*testing.T//g'`;

IFS=', ' read -r -a test_names_list <<< "$test_names";

for i in "${test_names_list[@]}"
do
   : 
   echo $i >> gum_go_test_temp
done

test_func_name=`cat gum_go_test_temp | gum filter --placeholder "pick spesific test" | cat`;
rm gum_go_test_temp;
verbose_option_flag=`gum choose "normal" "verbose"`;

additional_flag_option=`gum choose "Just Run" "Add flags"`;
additional_flag="";
if [ "$additional_flag_option" = "Add flags" ]; then
    additional_flag=`gum input --placeholder "Add flags"`
fi

echo "Okay then ...";
echo "starting $action 🏁";
echo "on $test_file";

if [ "$verbose_option_flag" = "verbose" ]; then
    verbose_option="-v"
    echo "mode verbose"
else
    verbose_option=""
fi

echo "go test $test_file -run $test_func_name $verbose_option $additional_flag" > gum_go_test_history;

sh -c "exec go test $test_file -run $test_func_name $verbose_option $additional_flag";

