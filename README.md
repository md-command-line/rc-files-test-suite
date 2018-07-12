# rc-files-test-suite
test your alias's and functions to make sure they provide output. For building rc files with TDD

## Why??
I was working on a few bash functions at once. 
<br/>two of the functions were working. The third was a struggle. 
<br/>The third function was coded correctly but I went down a bad path because I was running the command for the second function when testing the third function. 

This could have been mitigated if the previous tests were passing.

Basically every function gets rewrapped in an echo.

Since I was performing bash substitution and expansion with the event designator I needed to make sure the resultant expansion or reduction equaled the string output for when the function was echo'd

This will probably be useful to no one. 😓  But fun nonetheless.

## How it will work
When you source the bash file pass in a flag -test

if -test is passed the suite will run. 

tests will be stored as 
1) command args.
2) expect message.

it may by default pass 7 arguments: foo/bar/bas/...
Then the users would only need to write the expect messages with those arguments inserted correctly into the expectation.

## Current Progress
sourcing a bashrc does accept commands, 
```bash
. suite_pass.sh 

--Following tests should pass
success, suite was activated
success, "bar" was second command

--Following tests should fail
fail, suite was not activated
```
