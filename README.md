# Gowalla Style Photo Browser
*****

Photos on websites are awesome, but reloading a page for every picture is a drag. This photo browser uses jQuery to page through photos without refreshing just like [Gowalla](http://gowalla.com/). If you haven't seen the browser before you can checkout the [pictures i've taken on my travels](http://gowalla.com/users/schneems/photos/first).

If you want to know some more details about how the code works, read howto: [make a Gowalla style photo browser](#). 

### Photo Browser Features

1. Clickable navigation on top showing next and previous pictures
2. Next and Previous buttons
3. Clicking the Photo will take you to next photo
4. Using  Left and right arrow keys will go to next or previous photos
5. Photos loop at the end and the beginning in the correct direction
6. BackButton, bookmarks, and pasted links function correctly
7. Page pre-loads next photo for fast viewing
8. Photos page correctly if there is no javascript





## System Requirements
*****
bundler

imagemagick



## Installation instructions
*****

Go to your project directory then clone this repository:

>git clone git@github.com:thinkbohemian/Gowalla-Style-Photo-Browser.git

navigate to the newly created folder: 

>cd gowalla-style-browser

Install the gems
>bundle Install

Start the web-server:
>rails server


Navigate to [http://localhost:3000](http://localhost:3000) and enjoy paging through photos with ease.