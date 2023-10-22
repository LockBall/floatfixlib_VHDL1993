# floatfixlib_VHDL1993

ieee_proposed changed to floatfixlib to be compatible with Quartus Prime Lite and Questa and support fixed, float, etc. in vhdl 1993
****
## Bottom Line Up Front (BLUF)


This repo is the edited ieee_proposed → floatfixlib  
place the folder in `C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee`  
or your equivalent Quartus directory and use it in your VHDL  
`library floatfixlib;`  
`use floatfixlib.fixed_pkg.all;`  
****

## Explanation

Quartus used to support VHDL-2008 prior to version 17.  
Intel decided to monetise this in a despicable manner that is terrible for students and small developers.  
They proceeded to remove versions of Quartus prior to 17 from available downloads.

[Is Intel really cutting VHDL-2008 support from Quartus Prime Lite?](https://community.intel.com/t5/Intel-Quartus-Prime-Software/Is-Intel-really-cutting-VHDL-2008-support-from-Quartus-Prime/td-p/699141)


I discovered that this "ieee_proposed" library is a thing. [peteut vhdl2008c](https://github.com/peteut/vhdl2008c/tree/master)  
"This is a compatability library, which is designed to provide all of the functionality of the VHDL-200X-FT packages in VHDL-93.  
The "_c" after the package name is used to denote that this is a 1993 compliant version of this package.  
Otherwise, the name of the file and the name of the package are the same."

Adding a folder named: `ieee_proposed`  
containing these files to your Quartus directory  
`C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee\`

and using it in your VHDL will allow you to use ufixed, sfixed, etc.  
`library ieee_proposed;`  
`use ieee_proposed.fixed_pkg.all;`  

However, when you try to use:  
`Tools > RTL Simulation`  
Questa / Modelsim will complain that it does not have `ieee_proposed`.  
It is known that Questa has support for these features however they are locked behind $$$ 😤  

Thanks to a clue from [How to use ieee_proposed libraries in Modelsim?](https://vhdlguru.blogspot.com/2017/10/how-to-use-ieeeproposed-libraries-in.html)  
If we look in `C:\intelFPGA_lite\22.1std\questa_fse`  
we can see where Questa stores its libraries and that it calls their equivalent of the `ieee_proposed` library `floatfixlib`  

So we just need to convince Quartus to use `ieee_proposed` but called `floatfixlib`  

This turned out to be as simple (haha, no) as re-naming all instances of the text `ieee_proposed` to `floatfixlib`  

This repo is the edited `ieee_proposed` → `floatfixlib`  
place the folder in `C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee\`  
or your equivalent Quartus directory and use it in your VHDL to allow you to use ufixed, sfixed, etc.  
`library floatfixlib;`  
`use floatfixlib.fixed_pkg.all;`   

Please let me know if there are any issues or questions.  
