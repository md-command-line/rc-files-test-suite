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

if [ "$1" == "-test" ]; then
  if [ "$2" == "bar" ]; then 
    echo 'success, "bar" was second command'
  else  
    echo '"fail, "bar" was not second command'
  fi
fi
