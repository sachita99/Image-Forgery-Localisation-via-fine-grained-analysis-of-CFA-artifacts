# Image-Forgery-Localisation-via-fine-grained-analysis-of-CFA-artifacts
The main focus of this project includes problems of image tamper localisation. Image tamper techniques try to detect if an image is forged. In other words, they try to detect the presence of genric image manipulation. Image manipulation is mainly done by cut and move, copy and paste and many other ways. A few important algorithms for this topic include CFA, De-mosaicing algorithm, Interpolation algorithm, EM algorithm and Fine grained analysis 

How to run the code:-

Install Matlab

Unzip the file and save it in any folder

Go to Matlab and open the folder 

Open main.m and edit the code:-

im_true= imread('flowers.tiff');

im = imread('flowers-tampered.tiff');

Run it 

The above code will give you an output with an original image as well as the tampered image. Prediction error and histogram will be displayed 

To use another image edit the code:-

im_true= imread('garden.jpg');

im = imread('garden-tampered.jpg');

Run it and the output will be displayed 




