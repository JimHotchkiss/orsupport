# OR Support application
*Want user to be able to sign in, read Issues and Solutions, enter new Issues and its Solution, edit and delete said entries, make comments on entries, edit and delete their comment.*

1. Create Issue: Need routes, controller and view ~> rails g resource Issue title:string description:text solution:text
2. We want to be able to create a new Issue ~> controller (model: method, controller: action)
  *Need to add a form for users to enter their issue. Going to use Rails' 'form_for'.
  Also, in the form, added a 'time submitted' feature w/ time_ago_in_words(@issue.created_at)

  I also used the link_to, declaring the path: link_to issue.title, issue
  Also, used, on the index page, a create_at feature*

3. Now, I want the user to be able to search issues by component.  For example, I want to the user to be able to click on "SDC3" or "Monitor" ect.  I have found a video, on Learn, that will assist with the checkboxes and the associations.  Rails > Associations and Rails > Video Review: Has Many Through, starting @ 13:00.  Also, there is a lab, on Learn, that talks about the association between, in this case, Post and Category.  I can use this to create categories for the user to choose between.  It also talk about checkboxes on the form page.  Rails > Associations and Rails > Has Many Through in Form, the code is on Github.


application.scss:
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, or any plugin's
 * vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any other CSS/SCSS
 * files in this directory. Styles in this file should be added after the last require_* statement.
 * It is generally better to create a new file per style scope.
 *
 *= require_tree .
 *= require_self
 */  

 *Problem with server, "server already running".  Fix, per stackoverflow: kill -9 $(lsof -i tcp:3000 -t)*

 Going to merge the styling branch with the master branch.

 # Going to work on validations, so user cannot submit empty issue
  *we added validations to the Issue model, then we put in an if-statement in the issues-controller and now we are going to add some error messages to the issue-form*

    ~ Validations are working with the exception of the checkboxes.
    *Perhaps, I can write a method, in the Issue model, where I use params[:issue][:category_ids].empty? to write a method that I can then call in my validation of the checkboxes. *

    validate :category_cannont_be_blank

    def category_cannont_be_blank

      if category_ids.empty?
        errors.add(:category_ids, "One of the Checkboxes must be accpeted")
      end
    end

    Created new github branch, git checkout -b login

    # Make a counter so you can show which is most problem is most visited: 
    https://stackoverflow.com/questions/22402777/html-javascript-button-click-counter
