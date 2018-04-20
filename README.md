# OR Support application
*Want user to be able to sign in, read Issues and Solutions, enter new Issues and its Solution, edit and delete said entries, make comments on entries, edit and delete their comment.*

1. Create Issue: Need routes, controller and view ~> rails g resource Issue title:string description:text solution:text
2. We want to be able to create a new Issue ~> controller (model: method, controller: action)
  *Need to add a form for users to enter their issue. Going to use Rails' 'form_for'.
  Also, in the form, added a 'time submitted' feature w/ time_ago_in_words(@issue.created_at)

  I also used the link_to, declaring the path: link_to issue.title, issue
  Also, used, on the index page, a create_at feature*

3. Now, what I think I want to do is figure out how to divide issues up based on components.  Example, if a user is having issues with the SDC3, we want them to be able to link to the SDC3.  
