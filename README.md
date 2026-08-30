# Expert System Activity: Information Management (Tech-Based)

## Domain
Information Management (Tech-Based) — focuses on how IT systems store, secure, validate, and maintain digital data, based on the practices of IT professionals such as system admins or database administrators.

---

## 1. Questions to the Expert

To gather the knowledge needed for this system, we plan to interview an IT professional using the following questions:

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

## 3. Planned Inference

The system will use **rule-based inference** — simple "if-then" rules based on the collected facts to make decisions or recommendations.

**Examples:**
- If data is incomplete → the system flags it for correction.
- If an external user tries to access confidential data → the system denies the request.
- If a file is more than 5 years old and no longer active → the system recommends archiving it.
- If two records have conflicting information → the system sends it to an admin for checking.

This approach was chosen because most decisions in information management (like granting access or checking data validity) usually follow clear rules that an IT professional already applies — making it easier to represent as simple if-then rules instead of using more complex statistical methods.
