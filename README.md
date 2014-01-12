hackerYouApp
============

A simple rails app to gauge readiness for part 2 of the rails course at HackerYou

Task 4
============

When I delete a work, the request url takes the form of /work/:id, and the request method is delete.  The controller action 'destroy' gets triggered, and the .destroy method gets called on the work object that is passed to the controller through the url parameters (:id).  The view that is displayed is in the case of this app is the work#index view because of the redirect_to at the end of the destroy method.