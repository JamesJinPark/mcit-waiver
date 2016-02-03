This is a Ruby on Rails project done for UPenn CIS 597.

This application handles formal requests made by students who wish to waive required classes in the MCIT program.   

To run this application, an instance of the solr server must run in the background, using the following command:

rake sunspot:solr:run

To run the testing suite using cucumber, it is recommended that prior to running "rake cucumber", the following 
command is run:

rake db:test:prepare

The models chosen for this rails project were "Waivers", "Courses", "Devise:Users", "Devise:Admin".  
"Waivers" belong to "Courses" which in turn belong to "Devise:Users" or Instructors.  This approach was taken 
to take advantage of the fact that many waivers would belong to a single course and courses will generally be
taught by one professor.  Since a professor can teach many courses, the option to allow a user to have many 
courses was chosen.

Controllers were created for all four models, Waivers, Courses, Users, Admin.  This approach was taken so as to help
ease the process of generating views for all the models and creating routes.   

At minimum, each waiver request is required to have a first name, last name, email address, replacement class, boolean indicating whether the student has taken the replacement class, as well as the course that the student would like to waive. If instructors require additional information, they will be able to deny the waiver request and ask the student to resubmit another request. The email address requires a upenn.edu domain to prevent non-Penn affiliated people from creating extraneous submissions.

The functionality implemented during this iteration fulfills the purpose of creating the project. The previous iteration allowed students to submit waivers, but this iteration allows instructors to approve and deny those waivers. Additional functionality beyond this iteration will certainly improve the project for its clients (i.e. instructors), but without the current features, the project would not have as much utility as is required by the clients. 
