
int n = 240; 
int[] sort_arr = new int[n]; 

void setup() 
{ 
size(640, 480); 
sort_arr = create_random_array(n, width * 3 ); 
} 

int[] create_random_array(int n, int max) 
{ 
int[] x = new int[n]; 
for (int i = 0; i < n; i++) 
{ 
x[i] = int(random(max)); 
} 
return x; 
} 

void draw() 
{ 
stroke(255, 0, 0); 
background(100); 
for (int i=0; i<n-1; i++) 
{ 
int least = i; 
for (int j=i+1; j<n; j++) 
{ 
if(sort_arr[j] < sort_arr[least]) 
{ 
least = j; 
} 
} 
int tmp = sort_arr[i]; 
sort_arr[i] = sort_arr[least]; 
sort_arr[least] = tmp; 
} 
plot_array(sort_arr, n); 
} 

void plot_array(int[] x, int s) 
{ 
stroke(255, 0, 0); 
for (int i = 0; i < s; i++) 
{ 
rect(0, height / s *  5 * i, x[i], height / 12 * s); 
} 
} 

void mouseClicked() 
{ 
sort_arr = create_random_array(n, width * 3 ); 
}