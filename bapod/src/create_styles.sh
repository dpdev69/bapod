#!/bin/bash

# Array of component names
components=("TimeMachineGallery" "ImageDisplay" "DateInput" 
"Notification")

# Loop through each component
for componentName in "${components[@]}"
do
    # Create a new CSS file for the component
    css_file="${componentName}.css"
    echo ".${componentName} {
        text-align: center;
        margin: 0 auto;
    }" > "${css_file}"

    # Modify the component JS file to import the CSS file and add 
className
    js_file="${componentName}.js"

    # Add import statement
    echo "import './${componentName}.css';" | cat - "${js_file}" > temp && 
mv temp "${js_file}"

    # Add className using sed
    gsed -i '' "s/<div>/<div className=\"${componentName}\">/" 
"${js_file}"
done

