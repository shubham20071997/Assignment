For counting the number of images files between start date to end date

find . \( -name '*.jpg' -o -name '*.png' -o -name '*.gif' \) -newermt "2022-07-10" ! -newermt "2022-07-18"|wc -l

for displaying all the images files between start date to end date

find . \( -name '*.jpg' -o -name '*.png' -o -name '*.gif' \) -newermt "2022-07-10" ! -newermt "2022-07-18"|