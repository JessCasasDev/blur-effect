//This program uses OpenCV.3.2.0
#include <stdio.h>
#include<opencv2/highgui/highgui.hpp>
#include<math.h>

#define PI 3.141592653589793238462643383
#define e  2.718281828459045235360287471

void gaussian_matrix(int kernel){
    float** matrix;
    float sigma = 1.5;
    //Creamos el espacio en memoria de la matriz gaussiana
    matrix = (float**) malloc( sizeof(float*) * kernel);
    for(int i=0; i< kernel; i++){
        matrix[i] = (float*) malloc(sizeof(float) * kernel);
    }
    
    //creamos los valores de las posiciones de la matriz
    //estás posiciones son cartesianas y el punto (0,0) es el centro de la matriz
    //comienza en (-kernel/2,kernel/2) 
    //termina en (kernel/2, -kernel/2)
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
            printf("%.5f ",matrix[i][j]);
        }
        printf("\n");
    }

}


int main(){
    printf("Starting with opencv\n");
    int kernel = 5;
    gaussian_matrix(kernel);
    //Llamamos la imagen que queremos usar
    IplImage* img = cvLoadImage("4k.jpg",CV_LOAD_IMAGE_COLOR);
   //  cvNamedWindow("opencvtest",CV_WINDOW_AUTOSIZE);
   //  cvShowImage("opencvtest",img);
   //  printf("%d\n", CV_IMAGE_ELEM(img, uchar, 10, (90*3)+1));    
   // cvWaitKey(0);
   // cvReleaseImage(&img);
    printf("entre" );
      int row, col;
      int** mb;
      int** mg;
      int** mr;
    //Creamos el espacio en memoria de la matriz gaussiana
    mb = (int**) malloc( sizeof(int*) * img->width);
    mg = (int**) malloc( sizeof(int*) * img->width);
    mr = (int**) malloc( sizeof(int*) * img->width);
    for(int i=0; i< img->width; i++){
        mb[i] = (int*) malloc(sizeof(int) * img->height);
        mg[i] = (int*) malloc(sizeof(int) * img->height);
        mr[i] = (int*) malloc(sizeof(int) * img->height);
    }
 uchar b, g, r;

 for( row = 0; row < img->height; row++ )
 {
   for ( col = 0; col < img->width; col++ )
   {
     b = CV_IMAGE_ELEM( img, uchar, row, col * 3 );
     mb[row][col]=b;
     g = CV_IMAGE_ELEM( img, uchar, row, col * 3 + 1 );
     mg[row][col]=g;
     r = CV_IMAGE_ELEM( img, uchar, row, col * 3 + 2 );
     mr[row][col]=r;
     //printf("%.d,%.d,%.d\t ", b,g,r);
     //printf("%c\n", CV_IMAGE_ELEM( img, uchar, row, col * 3 ) );
   }
 }

   
    return 0;
}
