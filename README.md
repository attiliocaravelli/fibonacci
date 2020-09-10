# Tasks:
1. Input -> a number -> how many Fibonacci sequence numbers  
   should be printed out in reverse order  
2. Input -> a number -> to identify whether  
   it is part of the Fibonacci sequence or not  

Include a dockerfile that can build/run the project

# Assumptions:
1. **JDK version:** 8 or later    
2. **Character set:** UTF-8  

# Data models:
***BigInteger for input/output     
The Fibonacci sequence numbers are limited only by the memory available (-Xmx opt)  
I have considered input from a file to be more scalable and reusable (e.g. a web service)  
I have considered to store the sequence or reply in a file***

# Approach based on the Golden Ratio:
**Task n.1**  
In this method we directly implement the formula for nth term in the fibonacci series.  
			Fn = {[(√5 + 1)/2] ^ n} / √5  
**Task n.2**  
A number is Fibonacci if and only if one or both of (5*n2 + 4) or (5*n2 – 4) is a perfect square
***Source: https://en.wikipedia.org/wiki/Fibonacci_number#Recognizing_Fibonacci_numbers***

# Performance Analysis:
**Task n.1:**  
***Time Complexity:*** O(n) (n = number of elements requested of the sequence)  
***Space Complexity:*** O(1)  
**Task n.2:**    
***Time Complexity:*** O(1)  
***Space Complexity:*** O(1)  


# Build/run with docker:
1.  Install docker and run the daemon  
2.  download the Dockerfile of this repository in a local folder  
3.  
    On Linux -> open a terminal in the local folder above and type:  
		docker build -t malwarebytes . < Dockerfile  
	On Windows-> open a Powershell in the local folder above and type:  
		Get-Content Dockerfile | docker build -t malwarebytes .  
4.  docker run --rm -it malwarebytes:latest  
