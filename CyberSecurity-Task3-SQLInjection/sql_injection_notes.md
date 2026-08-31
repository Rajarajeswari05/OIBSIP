# SQL Injection Notes

## Environment

- Application: Damn Vulnerable Web Application (DVWA)
- Security Level: Low
- Platform: Kali Linux
- Target: Local DVWA instance
- Testing URL: http://127.0.0.1:4280

## Test 1 – Basic SQL Injection

### Input Used

```text
' OR '1'='1
###Observation

The application returned multiple user records instead of a single expected result.

The output included several records such as:

admin
Gordon Brown
Hack Me
Pablo Picasso
Bob Smith
Analysis


###Test 2 – Second SQL Injection Attempt


Input Used
1' OR 1=1 #

### Observation

The application returned multiple user records instead of displaying only the record associated with the entered user ID. The result was similar to the first test, showing that the input was being processed as part of the SQL query.
#Analysis


Then go to your local DVWA and enter:

```text
1' OR 1=1 #


### Analysis

The test shows that the application is vulnerable to SQL Injection at the Low security level. The condition `1=1` is always true, so the original query condition can be bypassed and multiple records can be returned. The `#` character comments out the remaining part of the query in this test.


##Security Impact

SQL Injection can allow an attacker to manipulate a database query through specially crafted input. Depending on the application's design and database permissions, this can expose or modify information that should not be accessible.


##Prevention

Developers should avoid constructing SQL queries by directly concatenating user input.

##Recommended protections include:

Parameterized queries
Prepared statements
Input validation
Least-privilege database accounts
Proper error handling
Ethical Use

This demonstration was performed only against my own local DVWA installation for educational purposes. No external website or unauthorized system was tested.




```text
Add SQL injection testing notes

The result indicates that the input was interpreted as part of the SQL query instead of being treated only as normal user input.

This demonstrates the SQL Injection vulnerability in the Low security version of DVWA.
