# floatfixlib_VHDL1993
ieee_proposed with names changed to floatfixlib to be compatible with
Quartus Prime Lite and Questa and support fixed, float, etc. in vhdl 1993
------------------------------------------------------------------------------------------------------------------------------------
Bottom Line Up Front (BLUF)
***************************

This repo is the edited ieee_proposed → floatfixlib
place the folder in C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee
or your equivalent Quartus directory and that should be it.
------------------------------------------------------------------------------------

Explanation
***********
Quartus used to support VHDL-2008 prior to version 17. Intel decided to monetise this in a despicable manner that is terrible for students and small developers. They proceeded to remove versions of Quartus prior to 17 from available downloads.

https://community.intel.com/t5/Intel-Quartus-Prime-Software/Is-Intel-really-cutting-VHDL-2008-support-from-Quartus-Prime/td-p/699141


I discovered that this is a thing.
https://github.com/peteut/vhdl2008c/tree/master
This is the "ieee_proposed" library.  This is a compatability library, which is designed to provide all of the functionality of the VHDL-200X-FT packages in VHDL-93.  The "_c" after the package name is used to denote that this is a 1993 compliant version of this package. Otherwise, the name of the file and the name of the package are the same.

Adding a folder named ieee_proposed containing these files to your Quartus directory
C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee\ieee_proposed

and using it in your VHDL (and others)
    library floatfixlib;
    use floatfixlib.fixed_pkg.all;

will allow you to use ufixed, sfixed, etc.

However, when you try to use tools > RTL Simulation Questa / Modelsim will complain that it does not have ieee_proposed. It is known that Questa has support for these features however.

Thanks to a clue from https://vhdlguru.blogspot.com/2017/10/how-to-use-ieeeproposed-libraries-in.html
If we look in C:\intelFPGA_lite\22.1std\questa_fse we can see where Questa stores its libraries and that it calls their equivalent of the ieee_proposed library floatfixlib

So we just need to convince Quartus to use ieee_proposed but called floatfixlib

This turned out to be as simple (haha, no) as re-naming all instances of the text ieee_proposed to floatfixlib

This repo is the edited ieee_proposed → floatfixlib
place the folder in C:\intelFPGA_lite\22.1std\quartus\libraries\vhdl\ieee
or your equivalent Quartus directory and that should be it.

Please let me know if there are any issues or questions.
