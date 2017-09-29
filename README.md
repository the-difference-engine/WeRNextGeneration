# README

# We'R'NextGeneration App

### Introduction:

This website is for We'R'NextGeneration, a 501(c)(3) corporation in Gaithersburg, MD. We'R'NextGeneration is helping every 9-12yr-old Young Dreamer, in your community, to be inspired with her/his innate creativity by bringing to the child the needed (and enchanting) adventure on which to grow into a Young Innovator.

### Some of the main features found in this web application include:

1. Forms for guardians and potential volunteers
2. Online signatures
3. Super admin can designate admins
4. Admins can approve or reject guardian and volunteer applications

### Application details:
* Ruby
* Rails
* PostgreSQL
* Hosted on Heroku

### App Functions as of 9/29/2017
This app has models/controllers for students, guardians, partners(donors), volunteers and employees(admin). 

The functionality allows everyone to come to the homepage and sign up for an account as either an employee, guardian or volunteer.

Guardian: Can login and add a student to their profile. They can edit and delete their own and the students profile. A guardian cannot view another child.

Employee/Admin: An employee can edit webpages content. They can approve the signups for volunteer, other employees, guardians and partners.

Super Admin: Same ability as an admin. They can also delete or suspend access/profiles.

Partners: N/A 

Location & Camps: Only will be needed if the organization opens up to doing more than one camp. An Employee, Guardian and Volunteer can view upcoming camps. 

Volunteer: Can apply to the Organization to be approved. 

Added Gems/Extras:

Heroku: Deploying to QA, Dev, Prod 

Paperclip: Ability to upload photo to profiles for volunteers, partners (logo), employees & guardians.

AWS: Using S3 as our storage for images

Devise: Used for a more secure user authentication

CSV: Ability to download employee data from Index page. 

RSpec: Installed for testing

