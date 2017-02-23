//This program uses OpenCV.3.2.0
#include <stdio.h>
#include<opencv2/highgui/highgui.hpp>
#include<math.h>

#define PI 3.141592653589793238462643383
#define e  2.718281828459045235360287471


void gaussian_matrix(float ** matrix, int kernel){
    float sigma = 1.5;
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
            //printf("%.5f ",matrix[i][j]);
        }
        //printf("\n");
    }
}


int main(){
    printf("Starting with opencv\n");
    int kernel = 4;
    float** gaussian;
    gaussian = (float**) malloc(sizeof(float) * kernel);
    //Creamos el espacio en memoria de la matriz gaussiana
    for(int i=0; i< kernel; i++){
        gaussian[i] = (float*) malloc(sizeof(float) * kernel);
    }
    gaussian_matrix(gaussian, kernel);
    //Llamamos la imagen que queremos usar
    IplImage *img = cvLoadImage("4k.jpeg",CV_LOAD_IMAGE_COLOR);
    IplImage *result = img;
    uchar *ptr = (uchar *) result->imageData;
    uchar *pixels = (uchar *) img->imageData;
   // uchar *result = (uchar *) img->imageData;
    int step = img->widthStep/sizeof(float);
    int channels = img->nChannels;
    //  cvNamedWindow("opencvtest",CV_WINDOW_AUTOSIZE);
   //  cvShowImage("opencvtest",img);
   //  printf("%d\n", CV_IMAGE_ELEM(img, uchar, 10, (90*3)+1));    
   // cvWaitKey(0);
   
    
   // cvReleaseImage(&img);
   
    for (int row = kernel/2; row<img->width;row++){
        for(int col = kernel/2; col<img->height; col++){
            double red=0.0, green=0.0, blue=0.0;
            uchar b, g, r;    
            for (int gau_w = 0; gau_w < kernel; gau_w++){
                for (int gau_h = 0; gau_h < kernel; gau_h++){
                    int ix = (row - kernel/2 + gau_h + img->width)%img->width;
                    int iy = (col - kernel/2 + gau_w + img->height)%img->height;
                    b = pixels[iy*img->width + ix *channels+0];
                    g = pixels[iy*img->width + ix *channels+1];
                    r = pixels[iy*img->width + ix *channels+2];
                    blue += b * gaussian[gau_w][gau_h];
                    green += g * gaussian[gau_w][gau_h];
                    red += r * gaussian[gau_w][gau_h];
                }
            }
            ptr[row*step+col*channels + 0]= blue;
            ptr[row*step+col*channels + 1]= green;
            ptr[row*step+col*channels + 2]= red;
        }
    }
    cvNamedWindow("opencvtest",CV_WINDOW_AUTOSIZE);
    cvShowImage("opencvtest",result);
   //  printf("%d\n", CV_IMAGE_ELEM(img, uchar, 10, (90*3)+1));    
    cvWaitKey(0);
    //Creamos el espacio en memoria de las matrices a usar
    
 
//Creamos tres matrices para separar los colores RGB de cada pixel de la imagen, luego a cada una de esas matrices se le realiza la multiplicación con la matriz de gauss. Para finalmente unir los colores RGb en la nueva imagen
/* for( row = 0; row < img->height; row++ ){
   for ( col = 0; col < img->width; col++ ){
     b = CV_IMAGE_ELEM( img, uchar, row, col * 3 ); 
     mblue[row][col]=b;
     g = CV_IMAGE_ELEM( img, uchar, row, col * 3 + 1 );
     mgreen[row][col]=g;
     r = CV_IMAGE_ELEM( img, uchar, row, col * 3 + 2 );
     mred[row][col]=r;
     //printf("%.d,%.d,%.d\t ", b,g,r);
     //printf("%c\n", CV_IMAGE_ELEM( img, uchar, row, col * 3 ) );
   }
 }*/
 
 //gaussian_matrix(gaussian, kernel);
 //
    return 0;
}
