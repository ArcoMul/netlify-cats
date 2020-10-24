# Empty index.html
> index.html

# Merge header.html into index.html
cat header.html >> index.html 

# For each image in the folder print it into an <img> tag in index.html
for filename in ./*.jpg; do
    echo '    <img src="' $filename '"/>' >> index.html
done

# find . -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image'


# Merge footer.html into index.html
cat footer.html >> index.html 
