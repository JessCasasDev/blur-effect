//This program uses OpenCV.3.2.0
#include <stdio.h>
#include <opencv2/highgui/highgui.hpp>
#include <math.h>
#include <iostream>

#define PI 3.141592653589793238462643383
#define e 2.718281828459045235360287471
#define sigma 1.9

using namespace std;
using namespace cv;

int kernel;
float **gaussian;

void gaussian_matrix(){    
    float sum = 0;
    for(int i=0; i < kernel; i++){        
        for(int j=0; j < kernel; j++){ 
            //Calculamos el valor de (1/2+pi*sigma)*e⁻(x²+y²/2*sigma²) 
           gaussian[i][j] = (1/(2*PI*(sigma*sigma))) * pow(e, -(pow(floor(kernel/2),2)+ pow(floor(kernel/2),2)))/(2*sigma*sigma);    
           sum += gaussian[i][j];    
        }        
    }
    //Para que la suma de la matriz de 1 la normalizamos
    for(int i=0; i<kernel; i++){
        for(int j=0; j<kernel; j++){        
           gaussian[i][j] = gaussian[i][j] / sum;
        }
    }
}

void blur(Mat img, Mat result){
    int k = kernel/2;
    
    //Recorremos la matriz de la imagen original
    for(int i=0; i<img.rows; i++){       
        for (int j=0; j<img.cols; j++){           
	    Vec3b intensity, res;
            double blue=0.0, red=0.0, green=0.0, suma=0.0;
            for(int x=-k; x<=k; x++){
                for(int y=-k; y<=k; y++){             
                    int pos_x, pos_y;
                    if(i+x<0) pos_x = i+x*-1;
                    else if(i+x>=img.rows) pos_x = i-x;
                    else pos_x = i+x;
                    if(j+y<0) pos_y = j+y*-1;
                    else if(j+y>=img.cols) pos_y = j-y;
                    else pos_y = j+y;          
                    //Obtenemos la posicion del pixel
		    intensity = img.at<Vec3b>(pos_x, pos_y);
		    blue += intensity.val[0]*gaussian[y+k][x+k];
                    green += intensity.val[1]*gaussian[y+k][x+k];
		    red += intensity.val[2]*gaussian[y+k][x+k];
                }      
            }
            //Modificamos la posicion del pixel de la imagen clonada
	    res = result.at<Vec3b>(i,j);
            res.val[0] = blue;
            res.val[1] = green;
            res.val[2] = red;
            result.at<Vec3b>(i,j) = res;
        }   
    }
namedWindow("MyWindow", CV_WINDOW_AUTOSIZE); //create a window with the name "MyWindow"
    imshow("MyWindow", result); //display the image which is stored in the 'img' in the "MyWindow" window

    waitKey(0); //wait infinite time for a keypress

    destroyWindow("MyWindow"); //destroy the window with the name, "MyWindow"
}


int main(int args, char *argv[]){
    char *address = argv[1];
    kernel = atoi(argv[2]);
//    int n_threads = atoi(argv[3]);
    if(kernel%2==0){
        printf("kernel must be odd\n");
        return 0;
    }

    Mat result;
    Mat img;
    img = imread(address,CV_LOAD_IMAGE_UNCHANGED);
    result = img.clone();
    //Creamos el espacio en memoria de la matriz gaussiana
    gaussian = (float**) malloc(kernel * sizeof(float *) );    
    for(int i=0; i< kernel; i++){
        gaussian[i] = (float *) malloc(kernel * sizeof(float));
    }
    if(gaussian == NULL){
        cout<<"No memory space"<<endl;
    }
    gaussian_matrix();
    blur(img,result);
    
  

return 0;
}
