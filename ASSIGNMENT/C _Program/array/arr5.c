// WAP to take two Array input from user and sort them in
// ascending ordescending order as per user’s choice
#include <stdio.h>              
int main()                       
{
	int a[100],n,i,j;
	printf("Array size: ");
        scanf("%d",&n);
        printf("Elements: ");
        
      for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }
	for (int i = 0; i < n; i++)                    
	{
		for (int j = 0; j < n; j++)            
		{
			if (a[j] > a[i])                
			{
				int tmp = a[i];         
				a[i] = a[j];            
				a[j] = tmp;             
			}  
		}
	}
	printf("\nascending : ");                    
	for (int i = 0; i < n; i++)                     
	{
		printf(" %d ", a[i]);
	}
	for (int i = 0; i < n; i++)                   
	{
		for (int j = 0; j < n; j++)             
		{
			if (a[j] < a[i])            
			{
				int tmp = a[i];         
				a[i] = a[j];          
				a[j] = tmp;             
			}
		}
	}
	printf("\ndescending : ");                    
	for (int i = 0; i < n; i++)                     
	{
		printf(" %d ", a[i]);               
	}
}