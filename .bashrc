# ~/.bashrc
if [ "$1" == "-test" ]; then
  echo "success, suite was activated"
else 
  echo "fail, suite was not activated"
fi # these will be tested in external file as test 1 and 2
# test 1 and 2
# bashrc cannot test itself. (infinate recursion) 
# and cannot test the test that is testing it. (infinate recursion) 
# this can be solved but I dont feel like solving right now.
# external test to mock bashrc working and not working.

# test 3
# when test suite running check that "bar" is second command


wf() { mv $1 $1$2;};
wb() { mv $1 $2$1;};
rv() { mv $1 ${1//$2};};

if [ "$1" == "-test" ]; then
  if [ "$2" == "bar" ]; then 
    echo 'success, "bar" was second command'
    test=$(declare -f wf | grep -v -E '{|}|\(')
    echo "echo 1: $test"
    testy="\"echo \\\"$test\\\"\""
    echo "echo 2: ${test//mv}"
    frog="echo ${test//mv}"
    echo "hello $frog"
    mv $(eval $frog)


    # echo $testy
    echo "echo 3: $test"
    echo "$(eval $testy)"
  else  
    echo '"fail, "bar" was not second command'
  fi
fi

# source https://stackoverflow.com/questions/10683349/forcing-bash-to-expand-variables-in-a-string-loaded-from-a-file
# test=$(declare -f wf | grep -v -E '{|}|\(')
# testy="\"echo \\\"$test\\\"\""
# # echo $testy
# $(eval "$testy")
# frog=$(echo'"' "$test"'"');
# echo $frog
# eval $frog



#declare -f wb
#declare -f rv

# working 1
## test=$(declare -f wf | grep -v -E '{|}|\(')
## frog="${test}"
## eval $frog
# mv $(eval $frog)
wf() { mv $1 $1$2;};

#working 2
test=$(declare -f wf | grep -v -E '{|}|\(')
frog="echo ${test}"
eval $frog
## comment section

pe() { printenv | grep $1  }

message('wf info.txt -'z, 'mv info.txt info.txt-')

message('pe foo bar bas boo', 'printenv | grep foo|bar|bas|boo')
