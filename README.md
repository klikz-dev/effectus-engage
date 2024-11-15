# Effectus Engage Project

## Guides from the old project

### Adding New Programs (Study) In Engage
- Currently there is no UI to add new programs/studies to Engage. This is all done through DB
scripts. Sample script: [old_2241_data-import-script.sql](https://github.com/klikz-dev/effectus-engage/blob/main/scripts/old_2241_data-import-script.sql)
- Patient de-id log and patient tracking questions are dynamically generated. Patient tracking
questions do not vary, if at all from program to program. However, patient de-id log questions
are program specific.
- For each program added, we want to create a corresponding demo/training program with the
same patient de-id log questions. Training studies are created by prepending the number “9” in
front of the program id and setting the training flag in the table.
- On production, program “99999 Effectus Prod Study” is the program that can be used to test
production releases.

### User Administration
The Effectus Engage application is deployed using Amazon Web Services, and uses Amazon Cognito, a
managed user management, authentication and authorization service. As an additional level of security, user
emails are validated against the Engage back-end database.

Source: https://aws.amazon.com/cognito/

This document outlines the procedures for adding and removing users, as well granting them access to systemfeatures.

### Add a New HCP
HCPs are eligible to log into the application once they have a valid record and email in the HCP tab.

Note: The email address HCPs use to self-sign-up must match the email in the application.

**Engage Admin/Molly: Add HCP Record to Application**
1. Log into Effectus Engage application
2. Navigate to HCPs Tab
3. If HCP already has an entry, check the email is set
4. Otherwise, click “Add New” and complete the form, make sure to set email and save

**HCP: Self Sign-up**
1. Navigate to application homepage, https://engage.effectusctr.com
2. Click Sign Up link
3. Complete form
4. Click Sign up
5. On the homepage, enter newly created username and password to login

### Deactivate an Application Account (HCP, Recruiter, Admin)
Remove application access for a user with any role, HCP, Recruiter or Administrator. The user will no longer
be able to log into the application. The account will still exist, in case the user needs to regain access at a
future date.

AWS Administrator/Tony/Erik: Navigate to Cognito Users and Groups Page, Disable User
1. Navigate to https://424336756517.signin.aws.amazon.com/console
2. Sign in with your AWS admin credentials
3. In the Find Services box, type Cognito
4. Click Cognito option in the search dropdown
5. Click Manage User Pools
6. Click epic-users
7. In the left-hand navigation panel, click Users and groups
8. Click username of user to deactivate
9. Click Disable user button

Re-enabling a user can be done with the same steps, toggling the Disable user button

### Add a New Engage Administrator or Recruiter
Create a new Effectus Engage administrator account, this level of access is only for Effectus staff members
with access to all database information and AWS services. 
1. Insert user email into the database table, lookup:
```
INSERT INTO `effectusDev`.`lookup` (`type`, `key`, `value`, `audit_modifiedby`)
VALUES ('EMAIL', 'RECRUITER', '<ENTER EMAIL HERE>', 'sql');
```
2. Navigate to https://424336756517.signin.aws.amazon.com/console
3. Sign in with your AWS admin credentials
4. In the Find Services box, type Cognito
5. Click Cognito option in the search dropdown
6. Click Manage User Pools
7. Click epic-users
8. In the left-hand navigation panel, click Users and groups
9. Click Create user
10. Complete the form and click Create user button, note the temporary password
11. Click on new account username in list
12. Click Add to group
13. Using the dropdown select EffectusRecruiters or EffectusAdmins
14. Click Add to group
15. Share username and temporary password with user and have them test the account and change their
password.
