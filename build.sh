# The following script is executed to 'build' an index.html file
# Based on the following commands (these are normal command line commands)
# an index.html file is generated, which is then shown online

# Empty index.html
> index.html

# Merge header.html into index.html
cat header.html >> index.html 

# Apply some settings for the following for-loop
shopt -s nullglob # Sets nullglob
shopt -s nocaseglob # Sets nocaseglob



# For each image in the folder print it into an <img> tag in index.html
for filename in ./cats/*.{jpg,jpeg,png}; do

shortName="${filename##*/}" # to clear the path in front of the name
shortName="${shortName%.jpg}" # to clear .jpg after file name
shortName="${shortName%.jpeg}" # to clear .jpeg after file name
shortName="${shortName%.png}" # to clear .png after file name  
#(this may not be the best solution but even this take solid 2 hours to manage. So.. I am okey with this)

    echo '<div class="catContainer">' >> index.html # to position and size cat pictures easily
    
    echo '<h2 class="catName"> '$shortName' </h2>' >> index.html # for cat names

    echo '<img src="' $filename '"/>' >> index.html # Original code
    
    echo '</div>' >> index.html # closing catContainer

done

# Merge footer.html into index.html
cat footer.html >> index.html 
