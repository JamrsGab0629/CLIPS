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



## Planned Inference


1. (Q3) Requester's role doesn't match required access → system recommends restricting access.
2. (Q4) External requester + confidential data → system recommends denying access.
3. (Q5) Data is incomplete or duplicated → system suggests flagging it for correction.
4. (Q6) Records conflict → system recommends escalating to admin for checking.
5. (Q7) Data is old and inactive → system suggests archiving.
6. (Q8) Data looks suspicious → system recommends flagging it.
7. (Q9) Multiple urgent requests → system suggests prioritizing the most urgent one.
8. (Q12) Backup is overdue → system recommends doing a backup.
9. (Q13) Unauthorized access attempt → system recommends denying access and logging it.
10. (Q14) Data fails accuracy check → system suggests reviewing it.

