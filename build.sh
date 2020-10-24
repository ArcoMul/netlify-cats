# Empty index.html
> index.html

# Merge header.html into index.html
cat header.html >> index.html 

# Apply some settings for the following for-loop
shopt -s nullglob # Sets nullglob
shopt -s nocaseglob # Sets nocaseglob

# For each image in the folder print it into an <img> tag in index.html
for filename in ./cats/*.{jpg,jpeg,png}; do
    echo '    <img src="' $filename '"/>' >> index.html
done

# Merge footer.html into index.html
cat footer.html >> index.html 
