# Password pwn checker #
Simple bash script which uses https://haveibeenpwned.com database of leaked passwords to check if your password has been ever used by somebody and leaked.

Leaking the password means the password has been gathered during data breach and is now listed in the password database dictionaries, which are used for dictionary attacs.

* The tool does not share your password with the API, just the first 5 characters of the SHA1 sum.
* The password is not endered as argument in the shell to avoid storing it in shell history database.

If your password exists in the leaked database, it's change is compulsory!

### Example ###
```
# ./ispwned.sh
Enter password to check: P@$$w0rd123
Your password has leaked 117 times.
```
And please, dont use the word *password*! No matter how modified with numbers and special characters it is - it's hacked already.

