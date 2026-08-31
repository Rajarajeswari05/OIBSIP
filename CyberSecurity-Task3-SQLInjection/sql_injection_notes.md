# SQL Injection Testing Notes

## 1. Environment

- **Application:** Damn Vulnerable Web Application (DVWA)
- **Security Level:** Low
- **Operating System:** Kali Linux
- **Target:** Local DVWA installation
- **Testing Address:** `http://127.0.0.1:4280`
- **Module Tested:** SQL Injection

---

## 2. Test 1 – Basic SQL Injection

### Input Used

```text
' OR '1'='1
```

### Observation

The application returned multiple user records instead of showing only one expected result.

The output displayed several records, including:

- admin
- Gordon Brown
- Hack Me
- Pablo Picasso
- Bob Smith

### Analysis

The result shows that the application accepted the entered value as part of the SQL query. Instead of treating the input only as a normal user ID, the application processed the SQL condition included in the input.

The condition `'1'='1'` is always true. Because of this, the normal filtering condition was bypassed and multiple records were displayed.

This confirmed that the SQL Injection vulnerability was present at the Low security level in DVWA.

---

## 3. Test 2 – Second SQL Injection Attempt

### Input Used

```text
1' OR 1=1 #
```

### Observation

The application returned multiple user records instead of displaying only the record associated with the entered user ID.

The result was similar to the first test and showed that the application was processing the input as part of the SQL query.

### Analysis

The second test confirmed the same SQL Injection issue using a different input.

The condition `1=1` is always true, which can make the original condition in the query ineffective. The `#` character comments out the remaining part of the SQL statement in this type of test.

The result demonstrated that specially crafted input could change the way the application's SQL query was processed.

---

## 4. Comparison of the Two Tests

| Test | Input | Result |
|---|---|---|
| Test 1 | `' OR '1'='1` | Multiple user records were displayed |
| Test 2 | `1' OR 1=1 #` | Multiple user records were displayed |

Both tests produced multiple records, showing that the SQL query could be influenced through user input.

---

## 5. Security Impact

SQL Injection can become a serious security issue when an application directly places user input into database queries.

An attacker may potentially use this type of vulnerability to:

- Bypass application restrictions
- Retrieve information from a database
- Access records that should not normally be visible
- Modify or delete database information in more serious cases
- Affect the confidentiality and integrity of application data

The actual impact depends on the database permissions and how the vulnerable application is designed.

---

## 6. Why the Vulnerability Occurs

The main reason for this vulnerability is improper handling of user input.

If an application directly combines user input with an SQL query, specially crafted input can change the meaning of the original query.

Instead of treating the input only as data, the database may interpret parts of the input as SQL syntax.

---

## 7. Prevention

SQL Injection can be prevented by following secure coding practices.

### Parameterized Queries

Applications should use parameterized queries instead of directly joining user input with SQL statements.

### Prepared Statements

Prepared statements separate SQL code from user-supplied data and help prevent input from being interpreted as SQL commands.

### Input Validation

Applications should validate user input and accept only the expected type and format of data.

### Least-Privilege Database Accounts

The database account used by an application should have only the permissions it actually needs.

### Proper Error Handling

Detailed database errors should not be displayed to users because they can reveal useful information about the database structure.

---

## 8. Testing Limitations

This exercise was performed against the intentionally vulnerable DVWA application at a Low security level.

The results from this laboratory environment should not be assumed to represent the security of a real-world application because DVWA is specifically designed for security training.

---

## 9. Ethical Considerations

All testing was performed on my own local DVWA installation for educational purposes.

The target was:

`http://127.0.0.1:4280`

No external websites, public servers, or systems belonging to other users were tested.

SQL Injection testing should only be performed when explicit authorization has been provided.

---

## 10. Screenshots

The following screenshots provide evidence of the SQL Injection testing performed during this task.

### Test 1 – SQL Injection Result

![SQL Injection Test 1](screenshots/sql_injection_payload1.png)

### Test 2 – SQL Injection Result

![SQL Injection Test 2](screenshots/sql_injection_payload2.png)

---

## 11. Conclusion

This task gave me practical experience with SQL Injection using DVWA in a controlled local environment.

I tested two different SQL Injection inputs and observed that both could cause multiple user records to be returned. This helped me understand how improper handling of user input can affect an SQL query.

The exercise also helped me understand the importance of secure development practices such as parameterized queries, prepared statements, input validation, proper error handling, and least-privilege database access.

Overall, the task improved my understanding of a common web application security vulnerability and how developers can reduce the risk of SQL Injection.ecurity version of DVWA.
