# P06
## 1. Source
### (1967 not used)

### 1992
+ [316N138_3](https://cchdo.ucsd.edu/cruise/316N138_3)
+ [316N138_4](https://cchdo.ucsd.edu/cruise/316N138_4)
+ [316N138_5](https://cchdo.ucsd.edu/cruise/316N138_5)

### 2003
+ [49NZ20030803](https://cchdo.ucsd.edu/cruise/49NZ20030803)
+ [49NZ20030909](https://cchdo.ucsd.edu/cruise/49NZ20030909)

### 2010
+ [318M20091121](https://cchdo.ucsd.edu/cruise/318M20091121)
+ [318M20100105](https://cchdo.ucsd.edu/cruise/318M20100105)

### 2017
+ [320620170703](https://cchdo.ucsd.edu/cruise/320620170703)
+ [320620170820](https://cchdo.ucsd.edu/cruise/320620170820)

## 2. Glitches
### 1992
#### `findJOAstations.m`
~~~
Warning: not found( 1)  32-1     -32.5010    273.4500 1992-05-13 d=3917
~~~
JOA's longitude is 86.55W = 273.45E, while CTD files has 86.0W = 274.0E. The SUM file supports the latter.

~~~
Warning: 1 JOA     3-1     -32.5013    288.3323 1992-05-04 d=5818
Warning: 1 CCHDO   5-1     -32.5013    288.3323 1992-05-04 d= 486
~~~
CTD file for station 3 does not exist.

~~~
Warning: 2 JOA    32-1     -32.5010    273.4500 1992-05-13 d=3917
Warning: 2 CCHDO  33-1     -32.5135    273.3270 1992-05-13 d=3782
~~~
As explained above.

~~~
Warning: 3 JOA   234-1     -30.0845    156.5153 1992-07-23 d=4826
Warning: 3 CCHDO 233-1     -30.0810    156.4958 1992-07-23 d=4815
~~~
JOA's location corresponds to that at BO in the SUM. CTD files for station 234 has lat=-30.0828 & lon=156.5297 which is BE in the SUM.

### 2010
#### `findJOAstations.m`
~~~
Warning: not found( 1) 997-1     -30.0000    152.9500 2003-08-03 d=  19
~~~
Too shallow.

~~~
Warning: 1 JOA   998-1     -32.5000    288.5500 2003-10-12 d=  19
Warning: 1 CCHDO   4-1     -32.5003    288.4997 2003-10-12 d= 122
~~~

~~~
Warning: 2 JOA   166-99     -32.5085    186.3292 2003-08-20 d=5698
Warning: 2 CCHDO 166-1     -32.5085    186.3292 2003-08-20 d=5699
~~~
JOA has a cast number of 99.

### 2010
#### `configuration.m`
According to the cruise report, Standard Sea Water batches P149/P150/P151 were used.
It was not clear at what station, P150 and P151 were changed. We assumed P151 were *not*
used and extended the use of P150 for all stations after Station 175.

### 2017
#### `reported_data.m`
As of May 2018, no depth data are found.
