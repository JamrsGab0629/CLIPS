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

Here's the simplified version — one clear, short rule per question:

## Planned Inference


1. New data comes in → system identifies its type.
2. Data has no category → system suggests a category.
3. Requester's role doesn't match required access → system restricts access.
4. External requester + confidential data → system denies access.
5. Data is incomplete or duplicated → system flags it for correction.
6. Records conflict → system sends it to admin for checking.
7. Data is old and inactive → system suggests archiving.
8. Data looks suspicious → system flags it automatically.
9. Multiple urgent requests → system prioritizes the most urgent one.
10. Recurring problem detected → system suggests the usual fix.
11. Data stored in outdated tool → system recommends migrating it.
12. Backup is overdue → system recommends doing a backup.
13. Unauthorized access attempt → system denies access and logs it.
14. Data fails accuracy check → system suggests reviewing it.
15. Data had a past incident → system recommends closer monitoring.


