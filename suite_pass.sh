echo ;echo '--Following tests should pass'
. .bashrc -test bar

echo ;echo '--Following tests should fail'
. .bashrc 
