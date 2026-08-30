# Expert System: Information Management (Tech-Based)

## Domain
Information Management (Tech-Based) — focuses on how IT systems store, secure, validate, and maintain digital data, based on the practices of IT professionals such as system admins or database administrators.

---

## 1. Questions to the Expert


1. What kind of data do you usually handle at work? (like files, database records, logs)
2. How do you decide where to put or how to categorize new data that comes in?
3. Who is allowed to access each type of data, and how do you control that?
4. What makes a piece of data "confidential" or sensitive?
5. How do you know if data is missing, duplicated, or corrupted?
6. What do you do if two records don't match or conflict with each other?
7. When do you consider data as "outdated," and how do you archive it?
8. Do you have any automated system that flags invalid or suspicious data?
9. How do you decide which task or request to prioritize first if there are many at once?
10. What's the most common problem you experience in managing data, and how do you usually fix it?
11. What tools or software do you use to store and manage data?
12. How often do you back up data, and why is that important?
13. What happens if someone tries to access data they're not supposed to see?
14. How do you make sure data stays accurate over time?
15. Can you give an example of a time you had to fix a big data problem? What did you do?

---

## 2. Shape of the Data

Based on the answers we expect to get, the information collected will be organized into the following facts, attributes, and possible values:

| Fact | Attribute | Possible Values |
|---|---|---|
| Type of Data | type | file, database record, log, report |
| Access Level | clearance | public, internal, confidential, restricted |
| Status | status | active, archived, pending review |
| Date Created | date_created | any date |
| Completeness | is_complete | true / false |
| Conflict | has_conflict | true / false |
| Requester | role | employee, admin, external |
| Storage Tool | tool_used | database system, cloud storage, local server |
| Backup Frequency | backup_schedule | daily, weekly, monthly |
| Unauthorized Access Attempt | access_violation | true / false |
| Accuracy Check | is_accurate | true / false |
| Data Incident | had_incident | true / false |

Each piece of data will have a **type**, a **clearance level** (who can see it), a **status** (active/old), and other details like **completeness**, **conflicts**, **storage tool**, and **backup schedule**. These facts and values will be the basis for the rules the system will follow.

---


Here's the fully aligned version — now every one of the 15 questions maps to a rule:

## Planned Inference

The system will use rule-based inference — applying if-then rules based directly on the interview questions, to give recommendations to the user.

**Rules based on the interview questions:**

1. *(From Q1 - types of data handled)* If new data comes in → the system will **identify** its type (file, database record, log, or report).
2. *(From Q2 - categorizing data)* If new data has no assigned category → the system will **suggest** a category based on its type.
3. *(From Q3 - access control)* If a requester's role doesn't match the required clearance → the system will **recommend** restricting access.
4. *(From Q4 - confidential data)* If a requester is external and the data is confidential → the system will **recommend** denying access.
5. *(From Q5 - missing/duplicate/corrupted data)* If data is found incomplete or duplicated → the system will **suggest** flagging it for correction.
6. *(From Q6 - conflicting records)* If two records don't match → the system will **recommend** escalating it to an admin for checking.
7. *(From Q7 - outdated data)* If data is old and no longer active → the system will **suggest** archiving it.
8. *(From Q8 - automated flagging)* If data looks suspicious or invalid → the system will **recommend** flagging it automatically.
9. *(From Q9 - prioritizing tasks)* If there are multiple requests at once → the system will **suggest** prioritizing the most urgent one first.
10. *(From Q10 - common problems)* If a recurring problem pattern is detected → the system will **recommend** the usual fix based on past cases.
11. *(From Q11 - storage tools)* If data is being stored in an outdated tool → the system will **recommend** migrating it to a current system.
12. *(From Q12 - backup frequency)* If a scheduled backup is overdue → the system will **recommend** performing a backup immediately.
13. *(From Q13 - unauthorized access)* If someone tries to access data they're not allowed to → the system will **recommend** denying access and logging the attempt.
14. *(From Q14 - data accuracy)* If data fails an accuracy check → the system will **suggest** reviewing and correcting it.
15. *(From Q15 - past incidents)* If a record had a past data incident → the system will **recommend** monitoring it more closely.

