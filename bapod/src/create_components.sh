#!/bin/bash

# Array of component names
declare -a components=("TimeMachineGallery" "ImageDisplay" "DateInput" 
"Notification")

# Loop over the array and create each component file
for componentName in "${components[@]}"
do
    # Create a new file for the component
    touch "${componentName}.js"

    # Add the basic structure to the component file
    echo "import React from 'react';

const ${componentName} = () => {
    return (
        <div>
            {/* TODO: Implement ${componentName} */}
        </div>
    );
};

export default ${componentName};" > "${componentName}.js"
done

