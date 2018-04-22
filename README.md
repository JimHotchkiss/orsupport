# OR Support application
*Want user to be able to sign in, read Issues and Solutions, enter new Issues and its Solution, edit and delete said entries, make comments on entries, edit and delete their comment.*

1. Create Issue: Need routes, controller and view ~> rails g resource Issue title:string description:text solution:text
2. We want to be able to create a new Issue ~> controller (model: method, controller: action)
  *Need to add a form for users to enter their issue. Going to use Rails' 'form_for'.
  Also, in the form, added a 'time submitted' feature w/ time_ago_in_words(@issue.created_at)

  I also used the link_to, declaring the path: link_to issue.title, issue
  Also, used, on the index page, a create_at feature*

3. Now, I want the user to be able to search issues by component.  For example, I want to the user to be able to click on "SDC3" or "Monitor" ect.  I have found a video, on Learn, that will assist with the checkboxes and the associations.  Rails > Associations and Rails > Video Review: Has Many Through, starting @ 13:00.  Also, there is a lab, on Learn, that talks about the association between, in this case, Post and Category.  I can use this to create categories for the user to choose between.  It also talk about checkboxes on the form page.  Rails > Associations and Rails > Has Many Through in Form, the code is on Github.    
