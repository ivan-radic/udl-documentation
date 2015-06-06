---
layout: dinky
title: UDL - Numbers section
weight: 60
navigation: Numbers
permalink: /udl-documentation/numbers/
---

Numbers
=======

This section describes new options user have when defining numbers.

![Numbers dialog](/images/numbers_01.png)

UDL number panel received major update in Notepad++ version 6.3. If you are using version 6.2, please scroll below.

Number handling is quite different in UDL 2.1 than it was in UDL 1.0 (or UDL 2.0).    
New interface and logical organization of code designed by CChris was used in version 2.0, 
and user suggestions lead to improvements and extensions in version 2.1. Let's break it down, feature by feature.

#### Decimal digits
Are supported automatically by UDL.    
__0123456789__   
__123__          
__987__          


#### Number prefixes 1     
Allows to define number prefixes that will be used with __decimal digits only__:     
__B1011__         
__O12345670__     
__D1234567890__   


#### Number prefixes 2     
Allows to define number prefixes that will be used with decimal digits and __extended with Extras1__:     
**0x**1234567890**ABCDEF**    
    - This will be mostly used for hex prefixes.      
    - Note that even standard C/C++ prefix "0x" must be defined here, as it is not supported by default.


#### Extra characters 1    
If you define "__0x__" hex prefix in Number prefixes 2, then add here "__A B C D E F a b c d e f__"     
__0x1234__    
__0xABC__     


#### Extra characters 2:    
These extra characters are used exactly like Extras1 but Extras2 are used in combination with __Suffix1__.
e.g. "__A B C D E F a b c d e f__"


#### Suffix characters 1:    
Some languages define HEX notifications as a suffix. Let's use __'H__ as an example:     
__1234567890ABCDEF'H__    
__ABC'H__                 
__123'H__                 


#### Suffix characters 2:     
This one works exactly like Prefix1 option, just works from the other end : Let's use "__B O D__" as examples:    
__1011B__          
__01234567O__      
__0123456789D__    
- Or you can use it for financial records, e.g. __100€__ or __200$__


#### Range symbols:
Sometimes you want to express number ranges:     
__100-200__      
__200::300__     
__300-->400__    


Sum up:    
__Prefix1__ and __Suffix2__ accept __numbers only__    
__Prefix2__ accepts numbers and __Extras1__            
__Suffix1__ accepts numbers and __Extras2__            

Also worth noting is the fact that UDL 2.0 restricts numbers to have just one decimal dot (in UDL 1.0 stuff like 1.2.3.4.5.6.7.8.9 was treated as a single number).

UDL 2.1 allows user selection of decimal point character (dot, comma or both).

That's it with numbers.


### Old version, UDL 2.0 (used in Notepad++ v 6.2)

![Numbers dialog](/images/numbers_02.png)

__Note: this section is left here for people stuck with old version, 
if you use newer version, you can safely ignore this section !!!__

Number handling is quite different in UDL 2.0 than it was in UDL 1.0.
New interface and logical organization of code was designed by CChris. 
I simply adopted his idea without adding anything to it.
I had to significantly change the code to integrate it with UDL 2.0, but I closely followed his superb interface.
Let's break it down, feature by feature.

#### Number prefixes   
This will be mostly used for hex prefixes.     
Note that even standard C/C++ prefix "__0x__" must be defined here, as it is not supported by default.

#### Extra characters in numbers with prefix    
e.g. If you define "0x" hex prefix, then add here "__A B C D E F a b c d e f__"

#### Optional sufixes for numbers:    
This one is useful for financial records, e.g. __100€__ or __200$__

#### Range symbols:    
Sometimes you want to express number ranges:    
__100-200__       
__200::300__      
__300-->400__     

Also worth noting is the fact that UDL 2.0 restricts numbers to have just one decimal dot 
(in UDL 1.0 stuff like 1.2.3.4.5.6.7.8.9 was treated as a single number).

User is  restricted to dot character for decimal point. If you need to use comma, please upgrade.

That's it with numbers. I really think CChris did a great job here, 
and covered almost anything user might need regarding numbers. 
If you think something is missing, please state so in discussion on Notepad++ forum.

