**Tasks:**
1. Input -> a number -> how many Fibonacci sequence numbers 
   should be printed out in reverse order
   
2. Input -> a number -> to identify whether 
   it is part of the Fibonacci sequence or not

Include a dockerfile that can build/run the project

Assumptions:
Minimum JDK 7 for compiling 
Character set UTF

Data models:
BigInteger for input/output   
The Fibonacci sequence numbers are limited only by the memory available (-Xmx opt)
I have considered input from a file to be more scalable and reusable (e.g. a web service)
I have considered to store the sequence or reply in a file 

Approach based on the Golden Ratio:
In this method we directly implement the formula for nth term in the fibonacci series.
Fn = {[(√5 + 1)/2] ^ n} / √5
Reference: http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/Fibonacci/fibFormula.html

Time Complexity: O(n) (n = number of elements requested of the sequence)
Space Complexity: O(1)

Build/run with docker:
1.  Install docker and run the daemon
2.  download the Dockerfile of this repository in a local folder
3.  
    On Linux -> open a terminal in the local folder above and type:
		docker build -t malwarebytes . < Dockerfile
	On Windows-> open a Powershell in the local folder above and type:
		Get-Content Dockerfile | docker build -t malwarebytes .
4.  docker run --rm -it malwarebytes:latest