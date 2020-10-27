# Project Description
This is a Ruby on Rails application that consists of two pages: Page 1 allows uploading of images and Page 2 is a simple game.
The game consists of showing a countdown timer, an image, a button and an HTML table.
When the button is clicked, the current timer value and image URL is saved to a database table named "plays" and is also displayed in the HTML table.
# Specifications
Page 1 “Home Page”: Allows upload of multiple images at one time (able to multi-select the images to be uploaded using the system's Open File dialog).

Page 2 “Game Page”: contains four HTML elements:

1. An H1 element: This element displays a countdown timer that counts down from 10 to 1. When
the timer reaches "1", it starts over from 10 again. The timer has a per-second resolution.

1. An IMG element: When the game page is loaded, the application will choose a random selection
of up to 10 images from all the uploaded images and store their URLs in an array. With each tick
of the countdown timer, the IMG HTML element will display an image from the array, in order (the
set of selected images must not change unless the page is refreshed).

1. A BUTTON element: When the button is clicked, the current timer value and current image
URL, should be saved to a database table called "plays". At the same time, update the HTML
table (described below) with this latest entry. All of this should be done via Javascript/Ajax
without causing the web page to be reloaded.

1. A TABLE element: On game page load, this HTML table should be populated with all the
entries currently in the "plays" database table (no pagination is needed - load and show all the
records at once). The HTML table has two columns: one shows the timer value and the other
shows in an IMG tag, the image associated with that record.
# Important Notes
1. Write your best, production quality, code
2. Use Ruby on Rails version 5 or greater
3. Use plain/vanilla Javascript only (don’t use any Javascript libraries; also don’t use Rails
UJS)
4. App does not need any sort of user authentication or any other features other than those
described above
5. Tests are optional
6. Submitting the project:
a. Create a separate commit for the initial Rails projects files (this makes it easy for
the reviewer to distinguish between your code and third party code)
b. Create a zip file of your test project and send it back via email; or if not able to
send via email, you could put the project on github/dropbox etc.
c. Delete any unnecessary files such as log files, cached files and temp files, to
reduce the size of the zip file
d. Optional: Consider deleting unnecessary files or directories in the Rails app; for
example, if you are not using any jobs, helpers or css
e. Optional: If you are familiar with Docker, consider including a Dockerfile
