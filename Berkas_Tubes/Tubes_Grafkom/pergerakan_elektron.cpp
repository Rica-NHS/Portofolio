#include <stdio.h>
#include <math.h>
#define pi 3.14
int main(){
    int Nt = 250;
    int t=0;
    double T =30;
    double dt= T/(Nt*1);

    double* x= new double[Nt+1];
    double* y= new double[Nt+1];
    double* x1= new double[Nt+1];
    double* y1= new double[Nt+1];
    double* x2= new double[Nt+1];
    double* y2= new double[Nt+1];
    double* x3= new double[Nt+1];
    double* y3= new double[Nt+1];
    double* x4= new double[Nt+1];
    double* y4= new double[Nt+1];


    for (int t=0;t<=Nt;t++){
        x[t]=(1/2)*sin(t*dt);
        y[t]=(1/2)*cos(t*dt);
        x1[t]=sin(pi*t*dt);
        y1[t]=cos(pi*t*dt);
        x2[t]=2*sin((pi/2)*t*dt);
        y2[t]=2*cos((pi/2)*t*dt);
        x3[t]=3*sin((pi/4)*t*dt);
        y3[t]=3*cos((pi/4)*t*dt);
        x4[t]=4*sin((pi/8)*t*dt);
        y4[t]=4*cos((pi/8)*t*dt);
    }
    FILE* pipe=popen("C:/gnuplot/bin/gnuplot.exe","w");
    for (int t=0;t<=Nt;t++)
    if(pipe!=NULL){
        fprintf(pipe,"reset\n");
        fprintf(pipe,"set title 'Pergerakan Elektron pada Orbitnya'\n");
        //fprintf(pipe,"set term pngcairo\n");
        //fprintf(pipe,"set output 'picture%i.png'\n",t);
        fprintf(pipe,"set border 0\n");
        fprintf(pipe,"unset tics\n");
        fprintf(pipe,"set xrange[-4:4]\n");
        fprintf(pipe,"set yrange[-4:4]\n");
        fprintf(pipe,"set zrange[-1:1]\n");
        fprintf(pipe,"splot '-' with points ls 7 lw 7 lc rgb 'black' notitle,'-' with lines ls 7 lt rgb 'purple' notitle,'-' with points ls 7 lw 4 lc rgb 'cyan' notitle,'-' with lines ls 7 lt rgb 'purple' notitle,'-' with points ls 7 lw 4 lc rgb 'green' notitle,'-' with lines ls 7 lt rgb 'purple' notitle,'-' with points ls 7 lw 4 lc rgb 'magenta' notitle,'-' with lines ls 7 lt rgb 'purple' notitle,'-' with points ls 7 lw 4 lc rgb 'orange' notitle\n");
        fprintf(pipe, "%g %g %g \n",x[t],y[t],0);
        fprintf(pipe,"end\n");
        for(int k=0;k<=t;k++){
            fprintf(pipe,"%g %g %g \n",x1[k],y1[k],0);
        }
        fprintf(pipe,"end\n");
        fprintf(pipe, "%g %g %g \n",x1[t],y1[t],0);
        fprintf(pipe,"end\n");
        for(int k=0;k<=t;k++){
            fprintf(pipe,"%g %g %g \n",x2[k],y2[k],0);
        }
        fprintf(pipe,"end\n");
        fprintf(pipe, "%g %g %g \n",x2[t],y2[t],0);
        fprintf(pipe,"end\n");
        for(int k=0;k<=t;k++){
            fprintf(pipe,"%g %g %g \n",x3[k],y3[k],0);
        }
        fprintf(pipe,"end\n");
        fprintf(pipe, "%g %g %g \n",x3[t],y3[t],0);
        fprintf(pipe,"end\n");
        for(int k=0;k<=t;k++){
            fprintf(pipe,"%g %g %g \n",x4[k],y4[k],0);
        }
        fprintf(pipe,"end\n");
        fprintf(pipe, "%g %g %g \n",x4[t],y4[t],0);
        fprintf(pipe,"end\n");
        fprintf(pipe,"pause 0.1\n");
        fflush(pipe);
    }
    return 0;
    }
