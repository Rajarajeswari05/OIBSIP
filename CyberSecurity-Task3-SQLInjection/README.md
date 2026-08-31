# Task 3 – SQL Injection on DVWA

## 1. Introduction

This task was completed as part of my Oasis Infobyte Cyber Security Internship. The purpose of this task was to understand and demonstrate a SQL Injection vulnerability using Damn Vulnerable Web Application (DVWA).

The testing was performed only on my local Kali Linux system using the intentionally vulnerable DVWA application.

## 2. Objective

The objectives of this task were:

- Set up DVWA in a local environment.
- Configure DVWA with Low security.
- Understand how SQL Injection works.
- Perform two SQL Injection tests.
- Observe the information returned by the application.
- Analyse the security impact of the vulnerability.
- Understand how developers can prevent SQL Injection.

## 3. Environment Used

- **Operating System:** Kali Linux
- **Application:** DVWA (Damn Vulnerable Web Application)
- **Security Level:** Low
- **Web Server:** DVWA Docker environment
- **Browser:** Kali Linux web browser
- **Testing Address:** `http://127.0.0.1:4280`

## 4. DVWA Setup

DVWA was configured locally using Docker on Kali Linux.

After starting the DVWA containers, the application was accessed through:

```text
http://127.0.0.1:4280
```

The DVWA database was initialized before starting the security testing.

## 5. Security Level

The DVWA security level was changed from the default setting to:

```text
Low
```

The Low security level was selected because the task requires demonstrating the SQL Injection vulnerability in this controlled training environment.

## 6. What is SQL Injection?

SQL Injection is a web application vulnerability that occurs when user input is included directly in an SQL query without proper protection.

An attacker may use specially crafted input to change the way the database query is interpreted.

This can potentially allow unauthorized access to information or bypass application restrictions.

## 7. SQL Injection Testing

### Test 1 – Basic SQL Injection

#### Input Used

```text
' OR '1'='1
```

#### Observation

The application returned multiple user records instead of showing only one expected result.

The output included several records such as:

- admin
- Gordon Brown
- Hack Me
- Pablo Picasso
- Bob Smith

#### Analysis

The result shows that the application accepted the entered value as part of the SQL query instead of treating it only as normal user input.

The condition `'1'='1'` is always true. Because of this, the normal filtering condition was bypassed and multiple records were displayed.

This confirmed that the SQL Injection vulnerability was present at the Low security level.

### Test 2 – Second SQL Injection Attempt

#### Input Used

```text
1' OR 1=1 #
```

#### Observation

The application returned multiple user records instead of displaying only the record associated with the entered user ID.

The result was similar to the first test and showed that the application was processing the input as part of the SQL query.

#### Analysis

The second test confirmed the SQL Injection vulnerability using a different input.

The condition `1=1` is always true, which can make the original condition ineffective. The `#` character comments out the remaining part of the SQL statement in this type of test.

The result demonstrated that specially crafted input could change how the application's SQL query was processed.

## 8. Comparison of Test Results

| Test | Payload | Result |
|---|---|---|
| Test 1 | `' OR '1'='1` | Multiple user records were displayed |
| Test 2 | `1' OR 1=1 #` | Multiple user records were displayed |

Both tests demonstrated that user input could influence the SQL query.

## 9. Security Impact

SQL Injection can be a serious security issue when an application directly places user input into database queries.

Depending on the application and database permissions, SQL Injection may allow an attacker to:

- Bypass application restrictions
- Access unauthorized records
- Retrieve sensitive information
- Modify database information
- Affect the confidentiality and integrity of data

The actual impact depends on the application's design and the permissions available to the database account.

## 10. How to Prevent SQL Injection

### Parameterized Queries

Developers should use parameterized queries instead of directly joining user input with SQL statements.

### Prepared Statements

Prepared statements separate SQL commands from user-supplied data and help prevent the input from being interpreted as SQL syntax.

### Input Validation

User input should be validated according to the expected type, format, and length.

### Least-Privilege Database Access

The application database account should have only the permissions required for normal application operations.

### Secure Error Handling

Detailed database errors should not be displayed to users because they may reveal information about the application's database.

## 11. Screenshots

### Test 1 – SQL Injection Result

![SQL Injection Test 1](screenshots/sql_injection_payload1.png)

### Test 2 – SQL Injection Result

![SQL Injection Test 2](screenshots/sql_injection_payload2.png)

## 12. Ethical Considerations

This testing was performed only against my own local DVWA installation.

The target was:

```text
http://127.0.0.1:4280
```

No external websites, public servers, or unauthorized systems were tested.

SQL Injection testing should only be performed on systems where permission has been provided.

## 13. Conclusion

This task gave me practical experience with SQL Injection in a controlled local environment.

By testing two different inputs on DVWA, I observed that specially crafted input could influence the SQL query and return multiple user records.

The task also helped me understand why secure coding practices such as parameterized queries, prepared statements, input validation, and least-privilege database access are important for preventing SQL Injection.

Overall, this exercise improved my understanding of a common web application vulnerability and its basic prevention techniques.
