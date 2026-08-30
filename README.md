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
1. IF data is incomplete **THEN** flag it and return for correction.
2. IF requester's role is external **AND** data's clearance is confidential **THEN** deny access.
3. IF requester's role is admin **AND** data's clearance is public or internal **THEN** grant access automatically.
4. IF data's age is more than 5 years **AND** status is not active **THEN** recommend archiving.
5. IF two records have conflicting information **THEN** escalate to admin for manual verification.
6. IF data is flagged as duplicate **THEN** remove or merge with the original record.
7. IF backup schedule is missing or overdue **THEN** alert the IT admin to perform a backup.
8. IF an unauthorized access attempt is detected **THEN** log the incident and notify the admin.
9. IF data accuracy check fails **THEN** flag the record for review and correction.
10. IF a data incident has occurred before on a record **THEN** mark it for closer monitoring.
11. IF multiple requests come in at the same time **AND** one is marked urgent **THEN** prioritize the urgent request first.
12. IF data is stored in an outdated tool/system **THEN** recommend migration to a current system.
13. IF data has no assigned clearance level **THEN** default its access to "restricted" until reviewed.
14. IF a record has passed its review date **THEN** trigger a re-validation process.
15. IF access violation is detected repeatedly from the same requester **THEN** suspend that requester's access privileges.


