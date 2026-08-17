// Select the input folder that contains images and output folder for saving the ourput images
inputDir = getDirectory("Select Input Folder");
outputDir = getDirectory("Select Output Folder");

// Get a list of all image files in the folder
fileList = getFileList(inputDir);

// Loop through each image file
for (i = 0; i < fileList.length; i++) {
    filePath = inputDir + fileList[i];
    print("Processing: " + filePath);

// Open the image
run("Bio-Formats", "open=["+filePath+"] color_mode=Default rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT use_virtual_stack");

// Acquire the file name 
fileName = getTitle();
print("File name: " + fileName);

// Find the position of the last period
dotIndex = lastIndexOf(fileName, ".");

// Extract the base name
baseName = substring(fileName, 0, dotIndex);

print("File name: " + baseName);

// Acquire the stack dimensions
Stack.getDimensions(width, height, channels, slices, frames);

middle_plane=slices/2;

// print the middle plane
print("Middle plane: " + middle_plane);


// Open your image first or run this macro on an open stack
run("Duplicate...", "title=Extracted_Slice duplicate slices=" + middle_plane);

//Save the file
saveAs("Tiff", outputDir + fileList[i]);

close();
close();

}
