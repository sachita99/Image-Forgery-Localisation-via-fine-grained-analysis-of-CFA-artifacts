How to run the code:-
Install Matlab 
unzip the file and save it in any folder
Go to Matlab and Open the folder 
Open main.m and edit the code
im_true= imread('flowers.tiff') ;
im = imread('flowers-tampered.tiff');
and then run it 
The above code will give you an output with an original image as well as a tampered image. Prediction error and Histograms are  displayed too.
to use another image
edit the code 
im_true= imread('garden.jpg') ;
im = imread('garden-tampered.jpg');
run it and the output will be displayed 

