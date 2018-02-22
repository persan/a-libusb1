pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package bits_types_struct_timeval_h is

   type timeval is record
      tv_sec : aliased long;  -- /usr/include/bits/types/struct_timeval.h:10
      tv_usec : aliased long;  -- /usr/include/bits/types/struct_timeval.h:11
   end record;
   pragma Convention (C_Pass_By_Copy, timeval);  -- /usr/include/bits/types/struct_timeval.h:8

end bits_types_struct_timeval_h;
