 #echo ;echo '--Following tests should pass'
 #. .bashrc -test bar
 #
 #echo ;echo '--Following tests should fail'
 #. .bashrc 


echo ;echo '--Following tests move info.txt'
. .bashrc -test info.txt -
