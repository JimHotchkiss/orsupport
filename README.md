# OR Support application
*Want user to be able to sign in, read Issues and Solutions, enter new Issues and its Solution, edit and delete said entries, make comments on entries, edit and delete their comment.*

1. Create Issue: Need routes, controller and view ~> rails g resource Issue title:string description:text solution:text
2. We want to be able to create a new Issue ~> controller (model: method, controller: action)
  *Need to add a form for users to enter their issue. Going to use Rails' 'form_for'
