//This program uses OpenCV.3.2.0
#include <stdio.h>
#include<opencv2/highgui/highgui.hpp>
#include<math.h>

#define PI 3.141592653589793238462643383
#define e  2.718281828459045235360287471


void gaussian_matrix(float ** matrix, int kernel){
    float sigma = 5.7;
/*creamos los valores de las posiciones de la matriz
//estás posiciones son cartesianas y el punto (0,0) es el centro de la matriz
//comienza en (-kernel/2,kernel/2) 
#termina en (kernel/2, -kernel/2)*/
    float value_x = floor(kernel/2)*-1;
    float value_y = floor(kernel/2);
    //evaluamos el valor de 1/(2*pi*sigma²)
    float constant = 1/(2*PI*(sigma*sigma));
    float sum = 0;
    
    //Llenamos la matriz con los valores de la función de Gauss en dos dimensiones
    for(int i=0; i < kernel; i++){        
        for(int j=0; j < kernel; j++){ 
            //Calculamos el valor de e⁻(x²+y²/2*sigma²) y lo multiplicamos por el valor de la constante
           matrix[i][j] = constant * pow(e, -(((value_x*value_x)+ (value_y*value_y))/(2*sigma*sigma)));    
           value_x++;
           //reiniciamos el contador de x por cada fila recorrida
           if(value_x==floor(kernel/2)+1){
               value_x = floor(kernel/2)*-1;
            }
            sum += matrix[i][j];    
        }        
        value_y--;
    }
    //imprimimos en pantalla la matriz gaussiana
    for(int i=0; i<kernel; i++){
        for(int j=0; j<kernel; j++){
            //Para que la suma de la matriz de 1 la normalizamos
            matrix[i][j] = matrix[i][j] / sum;
          //  printf("%.5f ",matrix[i][j]);
        }
        //printf("\n");
    }
}


int main(){
    printf("Starting with opencv\n");
    int kernel = 17;
    float** gaussian;
    gaussian = (float**) malloc(sizeof(float) * kernel);
    //Creamos el espacio en memoria de la matriz gaussiana
    for(int i=0; i< kernel; i++){
        gaussian[i] = (float*) malloc(sizeof(float) * kernel);
    }
    gaussian_matrix(gaussian, kernel);
    //Llamamos la imagen que queremos usar
    IplImage *img = cvLoadImage("4k.jpeg",CV_LOAD_IMAGE_COLOR);
    IplImage *result = cvLoadImage("4k.jpeg",CV_LOAD_IMAGE_COLOR);
    uchar *ptr = (uchar *) result->imageData;
    uchar *pixels = (uchar *) img->imageData;
   // uchar *result = (uchar *) img->imageData;
    int step = img->widthStep/sizeof(uchar);
    int channels = img->nChannels;
    int img_width = img->width;
    int img_height = img->height;
    //  cvNamedWindow("opencvtest",CV_WINDOW_AUTOSIZE);
   //  cvShowImage("opencvtest",img);
   //  printf("%d\n", CV_IMAGE_ELEM(img, uchar, 10, (90*3)+1));    
   // cvWaitKey(0);
   
    int k = kernel/2;
    for(int i=k; i<img_height-k; i++){       
        for (int j=k; j<img_width-k; j++){
            CvScalar p;
            double blue=0, red=0, green=0;
            int neighbours = 0;
            CvScalar s;
            for(int x=-k; x<k; x++){
                for(int y=-k; y<k; y++){
                    s = cvGet2D(img,i+x,j+y);
                    blue += s.val[0]*gaussian[y+k][x+k];
                    green += s.val[1]*gaussian[y+k][x+k];
                    red += s.val[2]*gaussian[y+k][x+k];
                    
                }      
            }
            p.val[0] = blue;
            p.val[1] = green;
            p.val[2] = red;
            cvSet2D(result,i,j,p);
        }   
    }
   
    cvNamedWindow("Image Filtered",CV_WINDOW_AUTOSIZE);
    cvShowImage("Image Filtered",result);
    cvWaitKey(0);   
    return 0;
}
